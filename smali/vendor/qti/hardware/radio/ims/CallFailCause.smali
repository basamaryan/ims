.class public interface abstract annotation Lvendor/qti/hardware/radio/ims/CallFailCause;
.super Ljava/lang/Object;
.source "CallFailCause.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# static fields
.field public static final ACCESS_CLASS_BLOCKED:I = 0x201

.field public static final ANSWERED_ELSEWHERE:I = 0x1fe

.field public static final BLACKLISTED_CALL_ID:I = 0x1f8

.field public static final BUSY:I = 0x3

.field public static final CALL_BARRED:I = 0x7

.field public static final CALL_CONFERENCE_ONGOING:I = 0x251

.field public static final CALL_ONGOING_CW_DISABLED:I = 0x254

.field public static final CALL_ON_OTHER_SUB:I = 0x255

.field public static final CALL_SETUP_ONGOING:I = 0x247

.field public static final CALL_TRANSFER_ONGOING:I = 0x24a

.field public static final CALL_TYPE_NOT_ALLOWED:I = 0x245

.field public static final CALL_UPGRADE_ONGOING:I = 0x24f

.field public static final CAUSE_CALL_PULLED:I = 0x200

.field public static final COLLISION_1X:I = 0x256

.field public static final CONFERENCE_WITH_TTY_NOT_ALLOWED:I = 0x250

.field public static final CONGESTION:I = 0x5

.field public static final CS_CALL_ONGOING:I = 0x258

.field public static final CS_RETRY_REQUIRED:I = 0x1f9

.field public static final DIAL_MODIFIED_TO_DIAL:I = 0xc

.field public static final DIAL_MODIFIED_TO_DIAL_VIDEO:I = 0x21f

.field public static final DIAL_MODIFIED_TO_SS:I = 0xb

.field public static final DIAL_MODIFIED_TO_USSD:I = 0xa

.field public static final DIAL_VIDEO_MODIFIED_TO_DIAL:I = 0x220

.field public static final DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO:I = 0x221

.field public static final DIAL_VIDEO_MODIFIED_TO_SS:I = 0x222

.field public static final DIAL_VIDEO_MODIFIED_TO_USSD:I = 0x223

.field public static final DSDA_CONCURRENT_CALL_NOT_POSSIBLE:I = 0x26b

.field public static final EMERGENCY_PERM_FAILURE:I = 0xe

.field public static final EMERGENCY_TEMP_FAILURE:I = 0xd

.field public static final EMRG_CALL_ONGOING:I = 0x246

.field public static final ENCRYPTION_CALL_ONGOING:I = 0x253

.field public static final ERROR_UNSPECIFIED:I = 0x224

.field public static final FDN_BLOCKED:I = 0x8

.field public static final FEATURE_UNAVAILABLE:I = 0x1fb

.field public static final HOLD_REINVITE_COLLISION:I = 0x21e

.field public static final HOLD_RESUME_CANCELED:I = 0x21d

.field public static final HOLD_RESUME_FAILED:I = 0x21c

.field public static final HO_NOT_FEASIBLE:I = 0xf

.field public static final IMEI_NOT_ACCEPTED:I = 0x9

.field public static final INCOMPATIBILITY_DESTINATION:I = 0x6

.field public static final INVALID:I = 0x0

.field public static final LOW_BATTERY:I = 0x1f7

.field public static final MAX_CALL_LIMIT_REACHED:I = 0x248

.field public static final MEDIA_INIT_FAILED:I = 0x218

.field public static final MEDIA_NOT_ACCEPTABLE:I = 0x21a

.field public static final MEDIA_NO_DATA:I = 0x219

.field public static final MEDIA_UNSPECIFIED_ERROR:I = 0x21b

.field public static final MISC:I = 0x1fd

.field public static final NETWORK_DETACH:I = 0x233

.field public static final NETWORK_REJECT:I = 0x22b

.field public static final NETWORK_RESP_TIMEOUT:I = 0x22a

.field public static final NETWORK_UNAVAILABLE:I = 0x1fa

.field public static final NORMAL:I = 0x2

.field public static final NORMAL_UNSPECIFIED:I = 0x4

.field public static final NO_CSFB_IN_CS_ROAM:I = 0x243

.field public static final NO_VALID_SIM:I = 0x228

.field public static final OEM_CAUSE_1:I = 0x234

.field public static final OEM_CAUSE_10:I = 0x23d

.field public static final OEM_CAUSE_11:I = 0x23e

.field public static final OEM_CAUSE_12:I = 0x23f

.field public static final OEM_CAUSE_13:I = 0x240

.field public static final OEM_CAUSE_14:I = 0x241

.field public static final OEM_CAUSE_15:I = 0x242

.field public static final OEM_CAUSE_2:I = 0x235

.field public static final OEM_CAUSE_3:I = 0x236

.field public static final OEM_CAUSE_4:I = 0x237

.field public static final OEM_CAUSE_5:I = 0x238

.field public static final OEM_CAUSE_6:I = 0x239

.field public static final OEM_CAUSE_7:I = 0x23a

.field public static final OEM_CAUSE_8:I = 0x23b

.field public static final OEM_CAUSE_9:I = 0x23c

.field public static final ONGOING_HANDOVER:I = 0x24d

.field public static final OUT_OF_SERVICE:I = 0x227

.field public static final PRACK_TIMEOUT:I = 0x24b

.field public static final PULL_OUT_OF_SYNC:I = 0x1ff

.field public static final QOS_FAILURE:I = 0x24c

.field public static final RADIO_ACCESS_FAILURE:I = 0x22c

.field public static final RADIO_INTERNAL_ERROR:I = 0x229

.field public static final RADIO_LINK_FAILURE:I = 0x22d

.field public static final RADIO_LINK_LOST:I = 0x22e

.field public static final RADIO_OFF:I = 0x226

.field public static final RADIO_RELEASE_ABNORMAL:I = 0x232

.field public static final RADIO_RELEASE_NORMAL:I = 0x231

.field public static final RADIO_SETUP_FAILURE:I = 0x230

.field public static final RADIO_UPLINK_FAILURE:I = 0x22f

.field public static final REJECTED_ELSEWHERE:I = 0x25a

.field public static final RETRY_ON_IMS_WITHOUT_RTT:I = 0x26a

.field public static final SESSION_MODIFICATION_FAILED:I = 0x25d

.field public static final SIP_ALTERNATE_EMERGENCY_CALL:I = 0x225

.field public static final SIP_AMBIGUOUS:I = 0x267

.field public static final SIP_BAD_ADDRESS:I = 0x209

.field public static final SIP_BAD_REQUEST:I = 0x203

.field public static final SIP_BUSY:I = 0x20a

.field public static final SIP_CALL_OR_TRANS_DOES_NOT_EXIST:I = 0x264

.field public static final SIP_ERROR:I = 0x1fc

.field public static final SIP_EXTENSION_REQUIRED:I = 0x262

.field public static final SIP_FORBIDDEN:I = 0x204

.field public static final SIP_GLOBAL_ERROR:I = 0x217

.field public static final SIP_INTERVAL_TOO_BRIEF:I = 0x263

.field public static final SIP_LOOP_DETECTED:I = 0x265

.field public static final SIP_METHOD_NOT_ALLOWED:I = 0x25e

.field public static final SIP_NOT_ACCEPTABLE:I = 0x20c

.field public static final SIP_NOT_FOUND:I = 0x205

.field public static final SIP_NOT_REACHABLE:I = 0x20d

.field public static final SIP_NOT_SUPPORTED:I = 0x206

.field public static final SIP_PROXY_AUTHENTICATION_REQUIRED:I = 0x25f

.field public static final SIP_REDIRECTED:I = 0x202

.field public static final SIP_REQUEST_CANCELLED:I = 0x20b

.field public static final SIP_REQUEST_ENTITY_TOO_LARGE:I = 0x260

.field public static final SIP_REQUEST_PENDING:I = 0x268

.field public static final SIP_REQUEST_TIMEOUT:I = 0x207

.field public static final SIP_REQUEST_URI_TOO_LARGE:I = 0x261

.field public static final SIP_SERVER_BAD_GATEWAY:I = 0x210

.field public static final SIP_SERVER_INTERNAL_ERROR:I = 0x20e

.field public static final SIP_SERVER_MESSAGE_TOOLARGE:I = 0x214

.field public static final SIP_SERVER_NOT_IMPLEMENTED:I = 0x20f

.field public static final SIP_SERVER_PRECONDITION_FAILURE:I = 0x215

.field public static final SIP_SERVER_TIMEOUT:I = 0x212

.field public static final SIP_SERVER_VERSION_UNSUPPORTED:I = 0x213

.field public static final SIP_SERVICE_UNAVAILABLE:I = 0x211

.field public static final SIP_TEMPORARILY_UNAVAILABLE:I = 0x208

.field public static final SIP_TOO_MANY_HOPS:I = 0x266

.field public static final SIP_UNDECIPHERABLE:I = 0x269

.field public static final SIP_USER_MARKED_UNWANTED:I = 0x259

.field public static final SIP_USER_REJECTED:I = 0x216

.field public static final SRV_NOT_REGISTERED:I = 0x244

.field public static final UI_NOT_READY:I = 0x257

.field public static final UNOBTAINABLE_NUMBER:I = 0x1

.field public static final UNSUPPORTED_SIP_HDRS:I = 0x249

.field public static final USER_BUSY:I = 0x1f5

.field public static final USER_CANCELLED_SESSION_MODIFICATION:I = 0x25c

.field public static final USER_REJECT:I = 0x1f6

.field public static final USER_REJECTED_SESSION_MODIFICATION:I = 0x25b

.field public static final VT_WITH_AVPF_NOT_ALLOWED:I = 0x252

.field public static final VT_WITH_TTY_NOT_ALLOWED:I = 0x24e
