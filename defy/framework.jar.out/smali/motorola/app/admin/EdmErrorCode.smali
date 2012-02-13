.class public final Lmotorola/app/admin/EdmErrorCode;
.super Ljava/lang/Object;
.source "EdmErrorCode.java"


# static fields
.field public static final ACTION_EDM_ERROR_STATUS:Ljava/lang/String; = "mot.app.admin.edm.ERROR_STATUS"

.field public static final EDM_ERROR_STATUS_CERT_CANCELLED:I = -0x138a

.field public static final EDM_ERROR_STATUS_CERT_DELETION_FAILED:I = -0x1391

.field public static final EDM_ERROR_STATUS_CERT_EMPTY_CERTDATA:I = -0x138d

.field public static final EDM_ERROR_STATUS_CERT_INVALID_ARGUMENTS:I = -0x1389

.field public static final EDM_ERROR_STATUS_CERT_INVALID_CERTNAME:I = -0x138c

.field public static final EDM_ERROR_STATUS_CERT_INVALID_CERTTYPE:I = -0x138e

.field public static final EDM_ERROR_STATUS_CERT_TOO_LARGE_CERTIFICATE:I = -0x1390

.field public static final EDM_ERROR_STATUS_CERT_UNABLE_TO_SAVE_CERTIFICATE:I = -0x138f

.field public static final EDM_ERROR_STATUS_CERT_WRONG_PASSWORD_OR_INVALID_DATA:I = -0x138b

.field public static final EDM_ERROR_STATUS_EAS_ACCT_ADD_FAILED:I = -0xfa1

.field public static final EDM_ERROR_STATUS_EAS_ACCT_ALREADY_EXISTS:I = -0xfa0

.field public static final EDM_ERROR_STATUS_EAS_ACCT_DELETE_FAILED:I = -0xfa3

.field public static final EDM_ERROR_STATUS_EAS_ACCT_FETCH_FAILED:I = -0xfa2

.field public static final EDM_ERROR_STATUS_PATTERN_FAILED_TO_DELETE:I = -0x7d0

.field public static final EDM_ERROR_STATUS_PATTERN_NOT_FOUND_TO_DELETE:I = -0x7d1

.field public static final EDM_ERROR_STATUS_SD_CARD_NOT_FOUND:I = -0x7d2

.field public static final EDM_ERROR_STATUS_SUCCESS:I = 0x0

.field public static final EDM_ERROR_STATUS_VPN_ADD_FAILED:I = -0xbc1

.field public static final EDM_ERROR_STATUS_VPN_INVALID_CA_CERTIFICATE:I = -0xbba

.field public static final EDM_ERROR_STATUS_VPN_INVALID_ID:I = -0xbbf

.field public static final EDM_ERROR_STATUS_VPN_INVALID_ID_DELETE_FAILED:I = -0xbc2

.field public static final EDM_ERROR_STATUS_VPN_INVALID_ID_FETCH_FAILED:I = -0xbc3

.field public static final EDM_ERROR_STATUS_VPN_INVALID_IPSEC_PRE_SHARED_KEY:I = -0xbbc

.field public static final EDM_ERROR_STATUS_VPN_INVALID_L2TP_SECRET:I = -0xbb9

.field public static final EDM_ERROR_STATUS_VPN_INVALID_SERVER_NAME:I = -0xbc0

.field public static final EDM_ERROR_STATUS_VPN_INVALID_USER_CERTIFICATE:I = -0xbbb

.field public static final EDM_ERROR_STATUS_VPN_INVALID_VPN_TYPE:I = -0xbbd

.field public static final EDM_ERROR_STATUS_VPN_NAME_ALREADY_EXISTS:I = -0xbbe

.field public static final ERROR_CODE:Ljava/lang/String; = "error_code"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmotorola/app/admin/EdmErrorCode;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public returnEdmStatus(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "edmStatusErrorCode"
    .parameter "extraArg"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mot.app.admin.edm.ERROR_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "error_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "EXTRA_ARGS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lmotorola/app/admin/EdmErrorCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
