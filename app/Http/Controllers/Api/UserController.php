<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ApiResource;
use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:api');
    }

    /**
     * @OA\Get(
     *     path="/user",
     *     tags={"User"},
     *     summary="",
     *     description="Get all data",
     *     operationId="user_index",
     *     @OA\Parameter(
     *          name="per_page",
     *          description="per_page value is number. ex : ?per_page=10",
     *          required=false,
     *          in="query",
     *          @OA\Schema(
     *              type="number"
     *          )
     *     ),
     *     @OA\Parameter(
     *          name="page",
     *          description="page value is number. ex : ?page=1",
     *          required=false,
     *          in="query",
     *          @OA\Schema(
     *              type="number"
     *          )
     *     ),
     *     @OA\Parameter(
     *          name="sort",
     *          description="Sort value is string with rule column-name:order. ex : ?sort=id:asc",
     *          required=false,
     *          in="query",
     *          @OA\Schema(
     *              type="string"
     *          )
     *     ),
     *     @OA\Parameter(
     *          name="where",
     *          description="Where value is object. ex : ?where={'name':['john','doe'], 'dob':'1990-12-31'}",
     *          required=false,
     *          in="query",
     *          @OA\Schema(
     *              type="string"
     *          )
     *     ),
     *     @OA\Parameter(
     *          name="count",
     *          description="Count value is boolean. ex : ?count=true",
     *          required=false,
     *          in="query",
     *          @OA\Schema(
     *              type="boolean"
     *          )
     *     ),
     *     @OA\Response(
     *         response="default",
     *         description="OK",
     *         @OA\MediaType(
     *              mediaType="application/json",
     *              example={
     *                  "success"=true,
     *                  "message"="Get Data Successfull",
     *                  "data"={},
     *                  "metadata"={"total_data":"", "per_page":"", "total_page":"", "page":""}
     *              }
     *         )
     *     )
     * )
     */
    public function index(Request $request)
    {
        // parameter
        $count = $request->has('count') ? $request->get('count') : false;
        $sort = $request->has('sort') ? $request->get('sort') : 'users.id:asc';
        $where = $request->has('where') ? $request->get('where') : '{}';
        $search = $request->has('search') ? $request->get('search') : '';
        $per_page = $request->has('per_page') ? $request->get('per_page') : 10;
        $page = $request->has('page') ? $request->get('page') : 1;

        $sort = explode(':', $sort);
        $where = str_replace("'", "\"", $where);
        $where = json_decode($where, true);

        // query
        $query = User::select('users.*', 'user_levels.name as level_name')->join('user_levels','users.level_id','=','user_levels.id')->where([['users.id','>','0']]);

        // cek token
        $jwt_payload = auth()->guard('api')->user();
        if($jwt_payload['level_id'] != 1) {
            $query = $query->where('users.id', $jwt_payload['id']);
        }

        if($where){
            foreach($where as $key => $value) {
                if (is_array($value)) {
                    $query = $query->whereIn('users.'.$key, $value);
                } else {
                    $query = $query->where('users.'.$key, $value);
                }
            }
        }

        if($search){
            $query = $query->whereAny(['users.username', 'users.name','users.email'], 'like', "%{$search}%");
        }

        // data
        $data = [];
        $metadata = [];

        // metadata
        $metadata['total_data'] = $query->count('users.id');
        $metadata['per_page'] = $per_page;
        $metadata['total_page'] = ceil($metadata['total_data'] / $metadata['per_page']);
        $metadata['page'] = $page;

        // get count
        if($count == true) {
            $query = $query->count('users.id');
            $data['count'] = $query;
        }
        // get data
        else {
            $query = $query
                ->orderBy($sort[0], $sort[1])
                ->limit($per_page)
                ->offset(($page-1) * $per_page)
                ->get()
                ->toArray();

            foreach($query as $qry) {
                $temp = $qry;
                array_push($data, $temp);
            };
        }

        // result
        if($data) {
            return new ApiResource(true, 200, 'Get data successfull', $data, $metadata);
        } else {
            return new ApiResource(false, 200, 'No data found', [], $metadata);
        }
    }

    /**
     * @OA\Get(
     *     path="/user/{id}",
     *     tags={"User"},
     *     summary="",
     *     description="Get data by id",
     *     operationId="user_show",
     *     @OA\Parameter(
     *          name="id",
     *          description="id",
     *          required=true,
     *          in="path",
     *          @OA\Schema(
     *              type="number"
     *          )
     *     ),
     *     @OA\Response(
     *         response="default",
     *         description="OK",
     *         @OA\MediaType(
     *              mediaType="application/json",
     *              example={
     *                  "success"=true,
     *                  "message"="Get Data Successfull",
     *                  "data"={},
     *                  "metadata"={}
     *              }
     *         )
     *     )
     * )
     */
    public function show($id)
    {
        // query
        $query = User::select('users.*', 'user_levels.name as level_name')->join('user_levels','users.level_id','=','user_levels.id')->where([['users.id','>','0']]);

        // cek token
        $jwt_payload = auth()->guard('api')->user();
        if($jwt_payload['level_id'] != 1) {
            $query = $query->where('users.id', $jwt_payload['id']);
        }

        // data
        $data = $query->find($id);

        // result
        if($data) {
            return new ApiResource(true, 200, 'Get data successfull', $data->toArray(), []);
        } else {
            return new ApiResource(false, 200, 'No data found', [], []);
        }
    }

    /**
     * @OA\Post(
     *     path="/user",
     *     tags={"User"},
     *     summary="",
     *     description="Insert data",
     *     operationId="user_store",
     *     security={{"bearerAuth":{}}},
     *     @OA\RequestBody(
     *          @OA\MediaType(
     *              mediaType="application/json",
     *              @OA\Schema(
     *                  @OA\Property(
     *                      property="username",
     *                      type="string"
     *                  ),
     *                  @OA\Property(
     *                      property="password",
     *                      type="string"
     *                  ),
     *                  @OA\Property(
     *                      property="email",
     *                      type="string"
     *                  ),
     *                  @OA\Property(
     *                      property="name",
     *                      type="string"
     *                  )
     *              )
     *          )
     *     ),
     *     @OA\Response(
     *         response="default",
     *         description="OK",
     *         @OA\MediaType(
     *              mediaType="application/json",
     *              example={
     *                  "success"=true,
     *                  "message"="Insert Data Successfull",
     *                  "data"={},
     *                  "metadata"={}
     *              }
     *         )
     *     )
     * )
     */
    public function store(Request $request)
    {
        // cek token
        $jwt_payload = auth()->guard('api')->user();
        if($jwt_payload['level_id'] != 1) {
            return new ApiResource(false, 401, 'Does Not Have Access', [], []);
        }

        $request->validate([
            'name' => 'required',
            'email' => 'required|unique:users',
            'username' => 'required|unique:users',
            'password' => 'required',
        ]);

        $req = $request->post();
        $req['password'] = bcrypt($req['password']);

        $data = User::create($req);

        if($data) {
            return new ApiResource(true, 201, 'Insert data successfull', $data->toArray(), []);
        } else {
            return new ApiResource(false, 400, 'Failed to insert data', [], []);
        }
    }

    /**
     * @OA\Put(
     *     path="/user/{id}",
     *     tags={"User"},
     *     summary="",
     *     description="Update data",
     *     operationId="user_update",
     *     security={{"bearerAuth":{}}},
     *     @OA\Parameter(
     *          name="id",
     *          description="id",
     *          required=true,
     *          in="path",
     *          @OA\Schema(
     *              type="number"
     *          )
     *     ),
     *     @OA\RequestBody(
     *          @OA\MediaType(
     *              mediaType="application/json",
     *              @OA\Schema(
     *                  @OA\Property(
     *                      property="username",
     *                      type="string"
     *                  ),
     *                  @OA\Property(
     *                      property="password",
     *                      type="string"
     *                  ),
     *                  @OA\Property(
     *                      property="email",
     *                      type="string"
     *                  ),
     *                  @OA\Property(
     *                      property="name",
     *                      type="string"
     *                  )
     *              )
     *          )
     *     ),
     *     @OA\Response(
     *         response="default",
     *         description="OK",
     *         @OA\MediaType(
     *              mediaType="application/json",
     *              example={
     *                  "success"=true,
     *                  "message"="Update Data Successfull",
     *                  "data"={},
     *                  "metadata"={}
     *              }
     *         )
     *     )
     * )
     */
    public function update(Request $request, $id)
    {
        // cek token
        $jwt_payload = auth()->guard('api')->user();
        if($jwt_payload['level_id'] != 1) {
            if ($jwt_payload['id'] != $id) {
                return new ApiResource(false, 401, 'Does Not Have Access', [], []);
            }
        }

        $req = $request->post();
        if (isset($req['password'])) {
            $req['password'] = bcrypt($req['password']);
        }

        $query = User::findOrFail($id);
        $query->update($req);

        $data = User::findOrFail($id);

        if($data) {
            return new ApiResource(true, 201, 'Update data successfull', $data->toArray(), []);
        } else {
            return new ApiResource(false, 400, 'Failed to update data', [], []);
        }
    }

    /**
     * @OA\Delete(
     *     path="/user/{id}",
     *     tags={"User"},
     *     summary="",
     *     description="Delete data",
     *     operationId="user_destroy",
     *     security={{"bearerAuth":{}}},
     *     @OA\Parameter(
     *          name="id",
     *          description="id",
     *          required=true,
     *          in="path",
     *          @OA\Schema(
     *              type="number"
     *          )
     *     ),
     *     @OA\Response(
     *         response="default",
     *         description="OK",
     *         @OA\MediaType(
     *              mediaType="application/json",
     *              example={
     *                  "success"=true,
     *                  "message"="Delete Data Successfull",
     *                  "data"={},
     *                  "metadata"={}
     *              }
     *         )
     *     )
     * )
     */
    public function destroy($id)
    {
        // cek token
        $jwt_payload = auth()->guard('api')->user();
        if($jwt_payload['level_id'] != 1) {
            return new ApiResource(false, 401, 'Does Not Have Access', [], []);
        }

        $query = User::findOrFail($id);
        $query->delete();

        if($query) {
            return new ApiResource(true, 201, 'Delete data successfull', [], []);
        } else {
            return new ApiResource(false, 400, 'Failed to delete data', [], []);
        }
    }
}
