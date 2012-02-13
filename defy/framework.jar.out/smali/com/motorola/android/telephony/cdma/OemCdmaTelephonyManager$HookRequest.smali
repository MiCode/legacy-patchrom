.class Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;
.super Ljava/lang/Object;
.source "OemCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HookRequest"
.end annotation


# instance fields
.field public data:[B

.field public msg:Landroid/os/Message;

.field public msgH:Landroid/os/Handler;


# direct methods
.method public constructor <init>([BLandroid/os/Message;Landroid/os/Handler;)V
    .locals 0
    .parameter "data"
    .parameter "msg"
    .parameter "msgH"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;->data:[B

    iput-object p2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;->msg:Landroid/os/Message;

    iput-object p3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;->msgH:Landroid/os/Handler;

    return-void
.end method
