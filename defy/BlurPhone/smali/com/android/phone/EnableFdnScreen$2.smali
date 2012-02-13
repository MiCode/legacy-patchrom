.class Lcom/android/phone/EnableFdnScreen$2;
.super Ljava/lang/Object;
.source "EnableFdnScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EnableFdnScreen;->handleResult(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EnableFdnScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EnableFdnScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/phone/EnableFdnScreen$2;->this$0:Lcom/android/phone/EnableFdnScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen$2;->this$0:Lcom/android/phone/EnableFdnScreen;

    invoke-virtual {v0}, Lcom/android/phone/EnableFdnScreen;->finish()V

    .line 134
    return-void
.end method
