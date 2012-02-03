.class public interface abstract Lcom/broadcom/bt/service/map/MAPConstants;
.super Ljava/lang/Object;
.source "MAPConstants.java"


# static fields
.field public static final ACTION_DS_DISCOVER:Ljava/lang/String; = "com.broadcom.bt.service.map.DS_DISCOVER"

.field public static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.service.map."

#the value of this static final field might be set in the static constructor
.field public static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final MSG_STATUS_INVALID:B = -0x1t

.field public static final MSG_STATUS_NOT_SET:B = 0x2t

.field public static final MSG_STATUS_SET:B = 0x1t

.field public static final NOTIFICATION_TYPE_DELIVERY_FAILURE:B = 0x3t

.field public static final NOTIFICATION_TYPE_DELIVERY_SUCCESS:B = 0x1t

.field public static final NOTIFICATION_TYPE_MEMORY_AVAILABLE:B = 0x6t

.field public static final NOTIFICATION_TYPE_MEMORY_FULL:B = 0x5t

.field public static final NOTIFICATION_TYPE_MESSAGE_DELETED:B = 0x7t

.field public static final NOTIFICATION_TYPE_MESSAGE_SHIFT:B = 0x8t

.field public static final NOTIFICATION_TYPE_NEW_MESSAGE:B = 0x0t

.field public static final NOTIFICATION_TYPE_SENDING_FAILURE:B = 0x4t

.field public static final NOTIFICATION_TYPE_SENDING_SUCCESS:B = 0x2t

.field public static final PROVIDER_PERMISSION:Ljava/lang/String; = "android.Manifest.permission.BLUETOOTH"

.field public static final PUSH_STATUS_ERROR:B = 0x1t

.field public static final PUSH_STATUS_SUCCESS:B = 0x0t

.field public static final STATE_MSE_STARTED:B = 0x2t

.field public static final STATE_MSE_STOPPED:B = 0x1t

.field public static final STATUS_MSE_CANNOT_START:I = 0x1

.field public static final STATUS_MSE_RETURN_CODE_SUCCESS:I = 0x0

.field public static final UPDATE_INBOX_STATUS_ERROR:B = 0x1t

.field public static final UPDATE_INBOX_STATUS_SUCCESS:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "com.broadcom.bt.service.map."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/map/MAPConstants;->ACTION_PREFIX_LENGTH:I

    return-void
.end method
