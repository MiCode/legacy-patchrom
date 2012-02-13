.class Lcom/android/phone/EnableSimPinScreen$2;
.super Ljava/lang/Object;
.source "EnableSimPinScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EnableSimPinScreen;->handleResult(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EnableSimPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EnableSimPinScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/phone/EnableSimPinScreen$2;->this$0:Lcom/android/phone/EnableSimPinScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen$2;->this$0:Lcom/android/phone/EnableSimPinScreen;

    invoke-virtual {v0}, Lcom/android/phone/EnableSimPinScreen;->finish()V

    .line 142
    return-void
.end method
