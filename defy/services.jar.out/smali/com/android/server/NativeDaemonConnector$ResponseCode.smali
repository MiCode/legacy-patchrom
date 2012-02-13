.class Lcom/android/server/NativeDaemonConnector$ResponseCode;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponseCode"
.end annotation


# static fields
.field public static final ActionInitiated:I = 0x64

.field public static final CommandOkay:I = 0xc8

.field public static final CommandParameterError:I = 0x1f5

.field public static final CommandSyntaxError:I = 0x1f4

.field public static final FailedRangeEnd:I = 0x257

.field public static final FailedRangeStart:I = 0x190

.field public static final OperationFailed:I = 0x190

.field public static final UnsolicitedInformational:I = 0x258


# instance fields
.field final synthetic this$0:Lcom/android/server/NativeDaemonConnector;


# direct methods
.method constructor <init>(Lcom/android/server/NativeDaemonConnector;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector$ResponseCode;->this$0:Lcom/android/server/NativeDaemonConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
