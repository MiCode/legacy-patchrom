.class Landroid/widget/EditText$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "EditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Landroid/widget/EditText$1;->this$0:Landroid/widget/EditText;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/widget/EditText$1;->this$0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hideCursorControllerMenu()V

    .line 129
    iget-object v0, p0, Landroid/widget/EditText$1;->this$0:Landroid/widget/EditText;

    const/4 v1, 0x0

    #calls: Landroid/widget/EditText;->sendTapNotificationToIME(Z)V
    invoke-static {v0, v1}, Landroid/widget/EditText;->access$000(Landroid/widget/EditText;Z)V

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 121
    iget-object v0, p0, Landroid/widget/EditText$1;->this$0:Landroid/widget/EditText;

    #calls: Landroid/widget/EditText;->sendTapNotificationToIME(Z)V
    invoke-static {v0, v1}, Landroid/widget/EditText;->access$000(Landroid/widget/EditText;Z)V

    .line 122
    return v1
.end method
