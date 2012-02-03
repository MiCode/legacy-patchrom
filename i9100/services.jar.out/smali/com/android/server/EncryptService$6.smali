.class Lcom/android/server/EncryptService$6;
.super Ljava/lang/Object;
.source "EncryptService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/EncryptService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EncryptService;

.field final synthetic val$code:I

.field final synthetic val$cooked:[Ljava/lang/String;

.field final synthetic val$raw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    iput p2, p0, Lcom/android/server/EncryptService$6;->val$code:I

    iput-object p3, p0, Lcom/android/server/EncryptService$6;->val$raw:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/EncryptService$6;->val$cooked:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    iget v1, p0, Lcom/android/server/EncryptService$6;->val$code:I

    iget-object v2, p0, Lcom/android/server/EncryptService$6;->val$raw:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/EncryptService$6;->val$cooked:[Ljava/lang/String;

    #calls: Lcom/android/server/EncryptService;->onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/EncryptService;->access$400(Lcom/android/server/EncryptService;ILjava/lang/String;[Ljava/lang/String;)Z

    .line 568
    return-void
.end method
