.class Lcom/android/phone/InVTCallScreen$8;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/app/KeyguardManager$OnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->releaseKeyGuardLock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 2732
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$8;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .locals 2
    .parameter "success"

    .prologue
    const-string v1, "InVTCallScreen"

    .line 2735
    if-eqz p1, :cond_0

    .line 2736
    const-string v0, "InVTCallScreen"

    const-string v0, "onKeyguardExitResult success"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    :goto_0
    return-void

    .line 2738
    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v0, "onKeyguardExitResult ! success"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
