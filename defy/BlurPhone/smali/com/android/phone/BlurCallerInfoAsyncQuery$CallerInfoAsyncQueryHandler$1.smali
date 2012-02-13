.class Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;
.super Ljava/lang/Thread;
.source "BlurCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #getter for: Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->blurInfo:Lcom/android/phone/BlurCallerInfo;
    invoke-static {v0}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$600(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/phone/BlurCallerInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/provider/contacts/IdentityModelProvider;->singleton()Lcom/motorola/blur/provider/contacts/IdentityModelProvider;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/blur/provider/contacts/IdentityModelProvider;->modelApi:Lcom/motorola/blur/provider/contacts/IdentityModelProvider$ModelApi;

    iget-object v2, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #getter for: Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->blurInfo:Lcom/android/phone/BlurCallerInfo;
    invoke-static {v2}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$600(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/phone/BlurCallerInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/phone/BlurCallerInfo;->identity_id:J

    iget-object v4, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #getter for: Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$700(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/blur/provider/contacts/IdentityModelProvider$ModelApi;->fromId(JLandroid/content/Context;)Lcom/motorola/blur/provider/contacts/IdentityModel;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/BlurCallerInfo;->model:Lcom/motorola/blur/provider/contacts/IdentityModel;

    .line 330
    invoke-static {}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Complete Model for identity - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #getter for: Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->blurInfo:Lcom/android/phone/BlurCallerInfo;
    invoke-static {v1}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$600(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/phone/BlurCallerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/BlurCallerInfo;->model:Lcom/motorola/blur/provider/contacts/IdentityModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/BlurCallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->access$100(Ljava/lang/String;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #getter for: Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->blurInfo:Lcom/android/phone/BlurCallerInfo;
    invoke-static {v0}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$600(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/phone/BlurCallerInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/BlurCallerInfo;->isQueried:Z

    .line 332
    iget-object v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #getter for: Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->blurInfo:Lcom/android/phone/BlurCallerInfo;
    invoke-static {v0}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$600(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/phone/BlurCallerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfo;->model:Lcom/motorola/blur/provider/contacts/IdentityModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #getter for: Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->blurInfo:Lcom/android/phone/BlurCallerInfo;
    invoke-static {v0}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$600(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/phone/BlurCallerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfo;->model:Lcom/motorola/blur/provider/contacts/IdentityModel;

    invoke-virtual {v0}, Lcom/motorola/blur/provider/contacts/IdentityModel;->getLatestStatus()Lcom/motorola/blur/provider/contacts/EntityDelta$ValuesDelta;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 335
    :cond_1
    return-void
.end method
