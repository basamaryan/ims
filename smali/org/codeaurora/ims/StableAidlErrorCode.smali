.class public Lorg/codeaurora/ims/StableAidlErrorCode;
.super Ljava/lang/Object;
.source "StableAidlErrorCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromImsConfigErrorCode(I)I
    .locals 1
    .param p0, "errorCause"    # I

    .line 403
    packed-switch p0, :pswitch_data_0

    .line 417
    const/4 v0, 0x0

    return v0

    .line 415
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 413
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 411
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 409
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 407
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 405
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toErrorCode(I)I
    .locals 3
    .param p0, "errorCode"    # I

    .line 335
    const-class v0, Lorg/codeaurora/ims/StableAidlErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response received with error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    .line 399
    :pswitch_0
    return v0

    .line 395
    :pswitch_1
    const/16 v0, 0x31

    return v0

    .line 393
    :pswitch_2
    const/16 v0, 0x2f

    return v0

    .line 391
    :pswitch_3
    const/16 v0, 0x2e

    return v0

    .line 389
    :pswitch_4
    const/16 v0, 0x2d

    return v0

    .line 387
    :pswitch_5
    const/16 v0, 0x2c

    return v0

    .line 385
    :pswitch_6
    const/16 v0, 0x2b

    return v0

    .line 383
    :pswitch_7
    const/16 v0, 0x2a

    return v0

    .line 381
    :pswitch_8
    const/16 v0, 0x29

    return v0

    .line 379
    :pswitch_9
    const/16 v0, 0x28

    return v0

    .line 377
    :pswitch_a
    const/16 v0, 0x27

    return v0

    .line 375
    :pswitch_b
    const/16 v0, 0x26

    return v0

    .line 373
    :pswitch_c
    const/16 v0, 0x25

    return v0

    .line 371
    :pswitch_d
    const/16 v0, 0x24

    return v0

    .line 369
    :pswitch_e
    const/16 v0, 0x23

    return v0

    .line 367
    :pswitch_f
    const/16 v0, 0x22

    return v0

    .line 365
    :pswitch_10
    const/16 v0, 0x21

    return v0

    .line 363
    :pswitch_11
    const/16 v0, 0x20

    return v0

    .line 361
    :pswitch_12
    const/16 v0, 0x1f

    return v0

    .line 359
    :pswitch_13
    const/16 v0, 0x1e

    return v0

    .line 357
    :pswitch_14
    const/16 v0, 0x1d

    return v0

    .line 355
    :pswitch_15
    const/16 v0, 0x1c

    return v0

    .line 353
    :pswitch_16
    const/16 v0, 0x1b

    return v0

    .line 351
    :pswitch_17
    const/16 v0, 0x10

    return v0

    .line 349
    :pswitch_18
    const/4 v0, 0x7

    return v0

    .line 347
    :pswitch_19
    const/4 v0, 0x6

    return v0

    .line 345
    :pswitch_1a
    const/4 v0, 0x3

    return v0

    .line 343
    :pswitch_1b
    return v0

    .line 341
    :pswitch_1c
    const/4 v0, 0x1

    return v0

    .line 339
    :pswitch_1d
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static toImsConfigErrorCode(I)I
    .locals 1
    .param p0, "errorCause"    # I

    .line 422
    packed-switch p0, :pswitch_data_0

    .line 435
    const/4 v0, 0x5

    return v0

    .line 432
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 430
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 428
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 426
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 424
    :pswitch_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toImsReasonInfoCode(I)I
    .locals 3
    .param p0, "failCause"    # I

    .line 80
    const-class v0, Lorg/codeaurora/ims/StableAidlErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call fail cause= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    const/16 v0, 0x64c

    const/16 v1, 0x150

    const/16 v2, 0x152

    sparse-switch p0, :sswitch_data_0

    .line 330
    const/4 v0, 0x0

    return v0

    .line 321
    :sswitch_0
    const/16 v0, 0xbba

    return v0

    .line 318
    :sswitch_1
    const/16 v0, 0xbb9

    return v0

    .line 315
    :sswitch_2
    const/16 v0, 0x17a

    return v0

    .line 313
    :sswitch_3
    const/16 v0, 0x179

    return v0

    .line 311
    :sswitch_4
    const/16 v0, 0x178

    return v0

    .line 309
    :sswitch_5
    const/16 v0, 0x176

    return v0

    .line 307
    :sswitch_6
    const/16 v0, 0x175

    return v0

    .line 297
    :sswitch_7
    const/16 v0, 0x174

    return v0

    .line 295
    :sswitch_8
    const/16 v0, 0x173

    return v0

    .line 291
    :sswitch_9
    const/16 v0, 0x172

    return v0

    .line 293
    :sswitch_a
    const/16 v0, 0x171

    return v0

    .line 289
    :sswitch_b
    const/16 v0, 0x170

    return v0

    .line 287
    :sswitch_c
    const/16 v0, 0x16f

    return v0

    .line 285
    :sswitch_d
    const/16 v0, 0x16e

    return v0

    .line 305
    :sswitch_e
    const/16 v0, 0x5ed

    return v0

    .line 303
    :sswitch_f
    const/16 v0, 0x200

    return v0

    .line 301
    :sswitch_10
    const/16 v0, 0x1ff

    return v0

    .line 299
    :sswitch_11
    const/16 v0, 0x3f9

    return v0

    .line 283
    :sswitch_12
    const/16 v0, 0x655

    return v0

    .line 281
    :sswitch_13
    return v0

    .line 279
    :sswitch_14
    const/16 v0, 0x643

    return v0

    .line 277
    :sswitch_15
    const/16 v0, 0x642

    return v0

    .line 275
    :sswitch_16
    const/16 v0, 0x641

    return v0

    .line 273
    :sswitch_17
    const/16 v0, 0x654

    return v0

    .line 271
    :sswitch_18
    const/16 v0, 0x653

    return v0

    .line 269
    :sswitch_19
    const/16 v0, 0x652

    return v0

    .line 267
    :sswitch_1a
    const/16 v0, 0x651

    return v0

    .line 265
    :sswitch_1b
    const/16 v0, 0x650

    return v0

    .line 263
    :sswitch_1c
    const/16 v0, 0x64f

    return v0

    .line 261
    :sswitch_1d
    const/16 v0, 0x64e

    return v0

    .line 259
    :sswitch_1e
    const/16 v0, 0x64d

    return v0

    .line 257
    :sswitch_1f
    return v0

    .line 255
    :sswitch_20
    const/16 v0, 0x64b

    return v0

    .line 253
    :sswitch_21
    const/16 v0, 0x649

    return v0

    .line 251
    :sswitch_22
    const/16 v0, 0x648

    return v0

    .line 249
    :sswitch_23
    const/16 v0, 0x647

    return v0

    .line 247
    :sswitch_24
    const/16 v0, 0x646

    return v0

    .line 245
    :sswitch_25
    const/16 v0, 0x645

    return v0

    .line 243
    :sswitch_26
    const/16 v0, 0x644

    return v0

    .line 241
    :sswitch_27
    const/16 v0, 0x5ec

    return v0

    .line 239
    :sswitch_28
    const v0, 0xf00f

    return v0

    .line 237
    :sswitch_29
    const v0, 0xf00e

    return v0

    .line 235
    :sswitch_2a
    const v0, 0xf00d

    return v0

    .line 233
    :sswitch_2b
    const v0, 0xf00c

    return v0

    .line 231
    :sswitch_2c
    const v0, 0xf00b

    return v0

    .line 229
    :sswitch_2d
    const v0, 0xf00a

    return v0

    .line 227
    :sswitch_2e
    const v0, 0xf009

    return v0

    .line 225
    :sswitch_2f
    const v0, 0xf008

    return v0

    .line 223
    :sswitch_30
    const v0, 0xf007

    return v0

    .line 221
    :sswitch_31
    const v0, 0xf006

    return v0

    .line 219
    :sswitch_32
    const v0, 0xf005

    return v0

    .line 217
    :sswitch_33
    const v0, 0xf004

    return v0

    .line 215
    :sswitch_34
    const v0, 0xf003

    return v0

    .line 213
    :sswitch_35
    const v0, 0xf002

    return v0

    .line 211
    :sswitch_36
    const v0, 0xf001

    return v0

    .line 207
    :sswitch_37
    const/16 v0, 0x5e9

    return v0

    .line 205
    :sswitch_38
    const/16 v0, 0x5e7

    return v0

    .line 203
    :sswitch_39
    const/16 v0, 0x5e6

    return v0

    .line 201
    :sswitch_3a
    const/16 v0, 0x5e5

    return v0

    .line 199
    :sswitch_3b
    const/16 v0, 0x5e4

    return v0

    .line 197
    :sswitch_3c
    const/16 v0, 0x5e3

    return v0

    .line 195
    :sswitch_3d
    const/16 v0, 0x5e2

    return v0

    .line 193
    :sswitch_3e
    const/16 v0, 0x5e1

    return v0

    .line 191
    :sswitch_3f
    const/16 v0, 0x5e0

    return v0

    .line 189
    :sswitch_40
    const/16 v0, 0x5df

    return v0

    .line 187
    :sswitch_41
    const/16 v0, 0x5de

    return v0

    .line 185
    :sswitch_42
    const/16 v0, 0x5dd

    return v0

    .line 183
    :sswitch_43
    const/16 v0, 0x79

    return v0

    .line 181
    :sswitch_44
    const/16 v0, 0x5dc

    return v0

    .line 125
    :sswitch_45
    const/16 v0, 0x5ea

    return v0

    .line 175
    :sswitch_46
    const/16 v0, 0xfb

    return v0

    .line 173
    :sswitch_47
    const/16 v0, 0xfa

    return v0

    .line 179
    :sswitch_48
    const/16 v0, 0xf9

    return v0

    .line 177
    :sswitch_49
    const/16 v0, 0xf8

    return v0

    .line 171
    :sswitch_4a
    const/16 v0, 0xf7

    return v0

    .line 135
    :sswitch_4b
    const/16 v0, 0x194

    return v0

    .line 133
    :sswitch_4c
    const/16 v0, 0x193

    return v0

    .line 131
    :sswitch_4d
    const/16 v0, 0x192

    return v0

    .line 129
    :sswitch_4e
    const/16 v0, 0x191

    return v0

    .line 123
    :sswitch_4f
    const/16 v0, 0x16a

    return v0

    .line 121
    :sswitch_50
    const/16 v0, 0x169

    return v0

    .line 119
    :sswitch_51
    const/16 v0, 0x161

    return v0

    .line 117
    :sswitch_52
    const/16 v0, 0x160

    return v0

    .line 115
    :sswitch_53
    const/16 v0, 0x162

    return v0

    .line 109
    :sswitch_54
    const/16 v0, 0x15f

    return v0

    .line 107
    :sswitch_55
    const/16 v0, 0x155

    return v0

    .line 105
    :sswitch_56
    const/16 v0, 0x154

    return v0

    .line 103
    :sswitch_57
    const/16 v0, 0x153

    return v0

    .line 101
    :sswitch_58
    return v2

    .line 99
    :sswitch_59
    const/16 v0, 0x151

    return v0

    .line 97
    :sswitch_5a
    return v1

    .line 95
    :sswitch_5b
    const/16 v0, 0x14f

    return v0

    .line 93
    :sswitch_5c
    const/16 v0, 0x14e

    return v0

    .line 91
    :sswitch_5d
    const/16 v0, 0x14d

    return v0

    .line 89
    :sswitch_5e
    const/16 v0, 0x14c

    return v0

    .line 87
    :sswitch_5f
    const/16 v0, 0x14b

    return v0

    .line 85
    :sswitch_60
    const/16 v0, 0x141

    return v0

    .line 163
    :sswitch_61
    const/16 v0, 0x5e8

    return v0

    .line 161
    :sswitch_62
    const/16 v0, 0x3f8

    return v0

    .line 159
    :sswitch_63
    const/16 v0, 0x3f7

    return v0

    .line 143
    :sswitch_64
    const/16 v0, 0x3f6

    return v0

    .line 141
    :sswitch_65
    return v1

    .line 149
    :sswitch_66
    const/16 v0, 0x92

    return v0

    .line 153
    :sswitch_67
    const/16 v0, 0x1f9

    return v0

    .line 151
    :sswitch_68
    const/16 v0, 0x95

    return v0

    .line 157
    :sswitch_69
    const/16 v0, 0x16c

    return v0

    .line 155
    :sswitch_6a
    const/16 v0, 0x16b

    return v0

    .line 169
    :sswitch_6b
    const/16 v0, 0xf6

    return v0

    .line 165
    :sswitch_6c
    const/16 v0, 0xf5

    return v0

    .line 167
    :sswitch_6d
    const/16 v0, 0xf4

    return v0

    .line 147
    :sswitch_6e
    const/16 v0, 0xf3

    return v0

    .line 145
    :sswitch_6f
    const/16 v0, 0xf1

    return v0

    .line 139
    :sswitch_70
    return v2

    .line 137
    :sswitch_71
    const/16 v0, 0x1f5

    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_71
        0x3 -> :sswitch_70
        0x8 -> :sswitch_6f
        0x9 -> :sswitch_6e
        0xa -> :sswitch_6d
        0xb -> :sswitch_6c
        0xc -> :sswitch_6b
        0xd -> :sswitch_6a
        0xe -> :sswitch_69
        0xf -> :sswitch_68
        0x1f7 -> :sswitch_67
        0x1f9 -> :sswitch_66
        0x1fa -> :sswitch_65
        0x1fe -> :sswitch_64
        0x1ff -> :sswitch_63
        0x200 -> :sswitch_62
        0x201 -> :sswitch_61
        0x202 -> :sswitch_60
        0x203 -> :sswitch_5f
        0x204 -> :sswitch_5e
        0x205 -> :sswitch_5d
        0x206 -> :sswitch_5c
        0x207 -> :sswitch_5b
        0x208 -> :sswitch_5a
        0x209 -> :sswitch_59
        0x20a -> :sswitch_58
        0x20b -> :sswitch_57
        0x20c -> :sswitch_56
        0x20d -> :sswitch_55
        0x20e -> :sswitch_54
        0x20f -> :sswitch_53
        0x210 -> :sswitch_53
        0x211 -> :sswitch_52
        0x212 -> :sswitch_51
        0x213 -> :sswitch_53
        0x214 -> :sswitch_53
        0x215 -> :sswitch_53
        0x216 -> :sswitch_50
        0x217 -> :sswitch_4f
        0x218 -> :sswitch_4e
        0x219 -> :sswitch_4d
        0x21a -> :sswitch_4c
        0x21b -> :sswitch_4b
        0x21f -> :sswitch_4a
        0x220 -> :sswitch_49
        0x221 -> :sswitch_48
        0x222 -> :sswitch_47
        0x223 -> :sswitch_46
        0x225 -> :sswitch_45
        0x226 -> :sswitch_44
        0x227 -> :sswitch_43
        0x228 -> :sswitch_42
        0x229 -> :sswitch_41
        0x22a -> :sswitch_40
        0x22b -> :sswitch_3f
        0x22c -> :sswitch_3e
        0x22d -> :sswitch_3d
        0x22e -> :sswitch_3c
        0x22f -> :sswitch_3b
        0x230 -> :sswitch_3a
        0x231 -> :sswitch_39
        0x232 -> :sswitch_38
        0x233 -> :sswitch_37
        0x234 -> :sswitch_36
        0x235 -> :sswitch_35
        0x236 -> :sswitch_34
        0x237 -> :sswitch_33
        0x238 -> :sswitch_32
        0x239 -> :sswitch_31
        0x23a -> :sswitch_30
        0x23b -> :sswitch_2f
        0x23c -> :sswitch_2e
        0x23d -> :sswitch_2d
        0x23e -> :sswitch_2c
        0x23f -> :sswitch_2b
        0x240 -> :sswitch_2a
        0x241 -> :sswitch_29
        0x242 -> :sswitch_28
        0x243 -> :sswitch_27
        0x244 -> :sswitch_26
        0x245 -> :sswitch_25
        0x246 -> :sswitch_24
        0x247 -> :sswitch_23
        0x248 -> :sswitch_22
        0x249 -> :sswitch_21
        0x24a -> :sswitch_20
        0x24b -> :sswitch_1f
        0x24c -> :sswitch_1e
        0x24d -> :sswitch_1d
        0x24e -> :sswitch_1c
        0x24f -> :sswitch_1b
        0x250 -> :sswitch_1a
        0x251 -> :sswitch_19
        0x252 -> :sswitch_18
        0x253 -> :sswitch_17
        0x254 -> :sswitch_16
        0x255 -> :sswitch_15
        0x256 -> :sswitch_14
        0x257 -> :sswitch_13
        0x258 -> :sswitch_12
        0x25a -> :sswitch_11
        0x25b -> :sswitch_10
        0x25c -> :sswitch_f
        0x25d -> :sswitch_e
        0x25e -> :sswitch_d
        0x25f -> :sswitch_c
        0x260 -> :sswitch_b
        0x261 -> :sswitch_a
        0x262 -> :sswitch_9
        0x263 -> :sswitch_8
        0x264 -> :sswitch_7
        0x265 -> :sswitch_6
        0x266 -> :sswitch_5
        0x267 -> :sswitch_4
        0x268 -> :sswitch_3
        0x269 -> :sswitch_2
        0x26a -> :sswitch_1
        0x26b -> :sswitch_0
    .end sparse-switch
.end method

.method public static toMsimAdditionalCallInfoCode(I)I
    .locals 1
    .param p0, "callInfoCode"    # I

    .line 440
    packed-switch p0, :pswitch_data_0

    .line 446
    const/4 v0, -0x1

    return v0

    .line 443
    :pswitch_0
    const/16 v0, 0xbba

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static toSmsManagerError(I)I
    .locals 3
    .param p0, "aidlReason"    # I

    .line 22
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 74
    const-class v1, Lorg/codeaurora/ims/StableAidlErrorCode;

    const-string v2, "Failure reason is unknown"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    return v0

    .line 72
    :pswitch_0
    const/16 v0, 0x18

    return v0

    .line 70
    :pswitch_1
    const/16 v0, 0x17

    return v0

    .line 68
    :pswitch_2
    const/16 v0, 0x16

    return v0

    .line 66
    :pswitch_3
    const/16 v0, 0x15

    return v0

    .line 64
    :pswitch_4
    const/16 v0, 0x14

    return v0

    .line 62
    :pswitch_5
    const/16 v0, 0x13

    return v0

    .line 60
    :pswitch_6
    const/16 v0, 0x12

    return v0

    .line 58
    :pswitch_7
    const/16 v0, 0x11

    return v0

    .line 56
    :pswitch_8
    const/16 v0, 0x10

    return v0

    .line 54
    :pswitch_9
    const/16 v0, 0xf

    return v0

    .line 52
    :pswitch_a
    const/16 v0, 0xe

    return v0

    .line 50
    :pswitch_b
    const/16 v0, 0xd

    return v0

    .line 48
    :pswitch_c
    const/16 v0, 0xc

    return v0

    .line 46
    :pswitch_d
    const/16 v0, 0xb

    return v0

    .line 44
    :pswitch_e
    const/16 v0, 0xa

    return v0

    .line 42
    :pswitch_f
    const/16 v0, 0x9

    return v0

    .line 40
    :pswitch_10
    const/4 v0, 0x6

    return v0

    .line 38
    :pswitch_11
    const/16 v0, 0x8

    return v0

    .line 36
    :pswitch_12
    const/4 v0, 0x7

    return v0

    .line 34
    :pswitch_13
    const/4 v0, 0x5

    return v0

    .line 32
    :pswitch_14
    const/4 v0, 0x4

    return v0

    .line 30
    :pswitch_15
    const/4 v0, 0x3

    return v0

    .line 28
    :pswitch_16
    const/4 v0, 0x2

    return v0

    .line 26
    :pswitch_17
    return v0

    .line 24
    :pswitch_18
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
