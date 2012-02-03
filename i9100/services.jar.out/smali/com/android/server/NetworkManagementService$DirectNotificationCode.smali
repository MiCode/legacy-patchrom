.class Lcom/android/server/NetworkManagementService$DirectNotificationCode;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirectNotificationCode"
.end annotation


# static fields
.field public static final FoundGroup:I = 0x1004

.field public static final FoundPeer:I = 0x1005

.field public static final GoFail:I = 0x3009

.field public static final GoNegoComplete:I = 0x2204

.field public static final GoNegoFail:I = 0x2205

.field public static final GoNegoStart:I = 0x2201

.field public static final GoStop:I = 0x3008

.field public static final GoisReady:I = 0x3007

.field public static final LinkAuthFail:I = 0x3004

.field public static final LinkCancel:I = 0x3002

.field public static final LinkComplete:I = 0x300c

.field public static final LinkDown:I = 0x300f

.field public static final LinkFail:I = 0x3005

.field public static final LinkStart:I = 0x3001

.field public static final LinkTimeout:I = 0x3003

.field public static final ProvisionReq:I = 0x2101

.field public static final ProvisionResp:I = 0x2102

.field public static final ProvisionTimeout:I = 0x2103

.field public static final StaAssoc:I = 0x300d

.field public static final StaDisassoc:I = 0x300e


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$DirectNotificationCode;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
