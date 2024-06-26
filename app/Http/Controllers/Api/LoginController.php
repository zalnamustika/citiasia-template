<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ApiResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use App\Models\UserLevel;

class LoginController extends Controller
{
    /**
     * @OA\Post(
     *     path="/login",
     *     tags={"Login"},
     *     summary="",
     *     description="Login",
     *     operationId="auth_login",
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
     *                  example={"username": "", "password": ""}
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
     *                  "message"="Login Data Successfull",
     *                  "data"={
     *                      "user":{"id":"", "level_id":"", "username":"", "name":"", "email":"", "picture":""},
     *                      "token": ""
     *                  },
     *                  "metadata"={},
     *              }
     *         )
     *     )
     * )
     */
    public function __invoke(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
                'username'     => 'required',
                'password'  => 'required'
            ]);
            if ($validator->fails()) {
                return response()->json($validator->errors(), 422);
            }
            $credentials = $request->only('username', 'password');
            $token = auth()->guard('api')->attempt($credentials);
            // check
            if($token) {
                // update last_login
                $req = ['last_login' =>  date('Y-m-d H:i:s')];
                $query = User::findOrFail(auth()->guard('api')->user()['id']);
                $query->update($req);

                // data
                $data = [
                    'user' => auth()->guard('api')->user(),
                    'token'   => $token
                ];
                $data['user']['last_login'] = date('Y-m-d H:i:s');
                $data['user']['level_name'] = UserLevel::find($data['user']['level_id'])['name'];

                return new ApiResource(true, 200, 'Login successfull.', $data, []);
            } else {
                $data = [];
                return new ApiResource(false, 403, 'Login failed, incorrect username or password.', $data, []);
            }
        } catch (\Exception $error) {
            return new ApiResource(false, 400, 'Internal server error, '.$error->getMessage(), [], []);
        }
    }

}
