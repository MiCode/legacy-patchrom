.class Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;
.super Landroid/accessibilityservice/IEventListener$Stub;
.source "AccessibilityService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IEventListenerWrapper"
.end annotation


# static fields
.field private static final DO_ON_ACCESSIBILITY_EVENT:I = 0x1e

.field private static final DO_ON_INTERRUPT:I = 0x14

.field private static final DO_SET_SET_CONNECTION:I = 0xa


# instance fields
.field private final mCaller:Lcom/android/internal/os/HandlerCaller;

.field private final mTarget:Landroid/accessibilityservice/AccessibilityService;

.field final synthetic this$0:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method public constructor <init>(Landroid/accessibilityservice/AccessibilityService;Landroid/accessibilityservice/AccessibilityService;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 190
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-direct {p0}, Landroid/accessibilityservice/IEventListener$Stub;-><init>()V

    .line 191
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mTarget:Landroid/accessibilityservice/AccessibilityService;

    .line 192
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-direct {v0, p2, p0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Lcom/android/internal/os/HandlerCaller$Callback;)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 193
    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 211
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 227
    const-string v1, "AccessibilityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 213
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 214
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mTarget:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v1, v0}, Landroid/accessibilityservice/AccessibilityService;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 216
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 220
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    :sswitch_1
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mTarget:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->onInterrupt()V

    goto :goto_0

    .line 223
    :sswitch_2
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->this$0:Landroid/accessibilityservice/AccessibilityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    iput-object v1, v2, Landroid/accessibilityservice/AccessibilityService;->mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 224
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mTarget:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    goto :goto_0

    .line 211
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x14 -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 206
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 207
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 208
    return-void
.end method

.method public onInterrupt()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 202
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 203
    return-void
.end method

.method public setConnection(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .locals 3
    .parameter "connection"

    .prologue
    .line 196
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 197
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 198
    return-void
.end method
