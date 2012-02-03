.class public Lcom/broadcom/bt/service/framework/BluetoothIntent;
.super Ljava/lang/Object;
.source "BluetoothIntent.java"


# static fields
.field public static final AGENT_CANCEL_USER_ACTION:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.AGENT_CANCEL_USER"

.field public static final AUTHORIZE_CANCEL_ACTION:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.AUTHORIZE_CANCEL"

.field public static final AUTHORIZE_REQUEST_ACTION:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

.field public static final BLUETOOTH_SERVICE_CONNECTED:B = 0x1t

.field public static final BLUETOOTH_SERVICE_DISCONNECTED:B = 0x0t

.field public static final BT_ACTION_PREFIX:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action."

#the value of this static final field might be set in the static constructor
.field public static final BT_ACTION_PREFIX_LENGTH:I = 0x0

.field static final BT_EXTRA_PREFIX:Ljava/lang/String; = "broadcom.android.bluetooth.intent."

.field public static final BT_PBAP_CHANGE_ACTION:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.BT_PBAP_CHANGED"

.field public static final BT_SERVICE_ACCESS_ACTION:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

.field public static final BT_SERVICE_CONNECTION_ACTION:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

.field public static final BT_SVC_STATE_CHANGE_ACTION:Ljava/lang/String; = "broadcom.bt.intent.action.BT_SVC_STATE_CHANGE"

.field public static final CALL_STATE:Ljava/lang/String; = "broadcom.android.bluetooth.intent.CALL_STATE"

.field public static final CALL_STATE_CHANGED_ACTION:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.CALL_STATE_CHANGED"

.field public static final DEVICE:Ljava/lang/String; = "broadcom.android.bluetooth.intent.DEVICE"

.field public static final EXTRA_BT_SVC_NAME:Ljava/lang/String; = "bt_svc_name"

.field public static final EXTRA_BT_SVC_STATE:Ljava/lang/String; = "bt_svc_state"

.field public static final EXTRA_BYTES_TRANSFERRED:Ljava/lang/String; = "BYTES_TRANSFERRED"

.field public static final EXTRA_FILEPATH:Ljava/lang/String; = "FILEPATH"

.field public static final EXTRA_FORMAT:Ljava/lang/String; = "FORMAT"

.field public static final EXTRA_OPERATION:Ljava/lang/String; = "OPERATION"

.field public static final EXTRA_RMT_DEV_ADDR:Ljava/lang/String; = "RMT_DEV_ADDR"

.field public static final EXTRA_RMT_DEV_NAME:Ljava/lang/String; = "RMT_DEV_NAME"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final EXTRA_SVC_NAME:Ljava/lang/String; = "SVC_NAME"

.field public static final EXTRA_TOTAL_BYTES:Ljava/lang/String; = "TOTAL_BYTES"

.field public static final FILE_FORMAT:Ljava/lang/String; = "broadcom.android.bluetooth.intent.FILE_FORMAT"

.field public static final FILE_NAME:Ljava/lang/String; = "broadcom.android.bluetooth.intent.FILE_NAME"

.field public static final FILE_SIZE:Ljava/lang/String; = "broadcom.android.bluetooth.intent.FILE_SIZE"

.field public static final KEY_LENGTH:Ljava/lang/String; = "broadcom.android.bluetooth.intent.KEY_LENGTH"

.field public static final OPER_STATUS:Ljava/lang/String; = "broadcom.android.bluetooth.intent.OPER_STATUS"

.field public static final PAIRING_VARIANT:Ljava/lang/String; = "broadcom.android.bluetooth.intent.PAIRING_VARIANT"

.field public static final PASSWORD:Ljava/lang/String; = "broadcom.android.bluetooth.intent.PASSWORD"

.field public static final REMOTE_DEVICE_CLASS_UPDATED_ACTION:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.REMOTE_DEVICE_CLASS_UPDATED"

.field public static final REMOTE_NAME_UPDATED_ACTION:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.REMOTE_NAME_UPDATED"

.field public static final RMT_DEV_ADDR:Ljava/lang/String; = "broadcom.android.bluetooth.intent.RMT_DEV_ADDR"

.field public static final RMT_DEV_NAME:Ljava/lang/String; = "broadcom.android.bluetooth.intent.RMT_DEV_NAME"

.field public static final SERVICE:Ljava/lang/String; = "broadcom.android.bluetooth.intent.SERVICE"

.field public static final SERVICE_CONNECTED:Ljava/lang/String; = "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

.field public static final SERVICE_OPER_CODE:Ljava/lang/String; = "broadcom.android.bluetooth.intent.SERVICE_OPER_CODE"

.field public static final SVC_STATE_STARTED:I = 0x2

.field public static final SVC_STATE_STOPPED:I = 0x1

.field public static final TEMPORARY_KEY:Ljava/lang/String; = "broadcom.android.bluetooth.intent.TEMPORARY_KEY"

.field public static final USER_ID_REQ:Ljava/lang/String; = "broadcom.android.bluetooth.intent.USER_ID_REQ"

.field public static final USER_NAME:Ljava/lang/String; = "broadcom.android.bluetooth.intent.USER_NAME"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const-string v0, "broadcom.android.bluetooth.intent.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/framework/BluetoothIntent;->BT_ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAccessRequest(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .parameter "i"
    .parameter "svcName"
    .parameter "peerDeviceName"
    .parameter "peerBDAddress"
    .parameter "operation"
    .parameter "format"
    .parameter "filePath"
    .parameter "totalBytes"

    .prologue
    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    .line 207
    if-nez p0, :cond_0

    .line 208
    new-instance p0, Landroid/content/Intent;

    .end local p0
    const-string v0, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .restart local p0
    :goto_0
    const-string v0, "SVC_NAME"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v0, "RMT_DEV_NAME"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v0, "RMT_DEV_ADDR"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v0, "OPERATION"

    int-to-byte v1, p4

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 216
    const-string v0, "FORMAT"

    int-to-byte v1, p5

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 217
    const-string v0, "FILEPATH"

    invoke-virtual {p0, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v0, "TOTAL_BYTES"

    invoke-virtual {p0, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    return-object p0

    .line 210
    :cond_0
    const-string v0, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static createBtSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .parameter "svcName"
    .parameter "state"

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.bt.intent.action.BT_SVC_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, i:Landroid/content/Intent;
    const-string v1, "bt_svc_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v1, "bt_svc_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    return-object v0
.end method
