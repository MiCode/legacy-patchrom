.class Lcom/android/phone/ChangeIccPinScreen$3;
.super Ljava/lang/Object;
.source "ChangeIccPinScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ChangeIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ChangeIccPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/ChangeIccPinScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/phone/ChangeIccPinScreen$3;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen$3;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    invoke-virtual {v0}, Lcom/android/phone/ChangeIccPinScreen;->finish()V

    .line 249
    return-void
.end method
