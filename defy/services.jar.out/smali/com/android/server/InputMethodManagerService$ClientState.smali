.class Lcom/android/server/InputMethodManagerService$ClientState;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientState"
.end annotation


# instance fields
.field final binding:Landroid/view/inputmethod/InputBinding;

.field final client:Lcom/android/internal/view/IInputMethodClient;

.field curSession:Lcom/android/server/InputMethodManagerService$SessionState;

.field final inputContext:Lcom/android/internal/view/IInputContext;

.field final pid:I

.field sessionRequested:Z

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V
    .locals 5
    .parameter
    .parameter "_client"
    .parameter "_inputContext"
    .parameter "_uid"
    .parameter "_pid"

    .prologue
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ClientState;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    iput p4, p0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    iput p5, p0, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    new-instance v0, Landroid/view/inputmethod/InputBinding;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v2}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    iget v4, p0, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/os/IBinder;II)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
