.class Lcom/android/phone/ChangeSimPinScreen$3;
.super Ljava/lang/Object;
.source "ChangeSimPinScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ChangeSimPinScreen;->handleResult(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ChangeSimPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/ChangeSimPinScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/phone/ChangeSimPinScreen$3;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen$3;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    invoke-virtual {v0}, Lcom/android/phone/ChangeSimPinScreen;->finish()V

    .line 297
    return-void
.end method
