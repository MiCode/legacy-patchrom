.class Landroid/webkit/WebView$InvokeListBox$Container;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView$InvokeListBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Container"
.end annotation


# static fields
.field static final OPTGROUP:I = -0x1

.field static final OPTION_DISABLED:I = 0x0

.field static final OPTION_ENABLED:I = 0x1


# instance fields
.field mEnabled:I

.field mId:I

.field mString:Ljava/lang/String;

.field final synthetic this$1:Landroid/webkit/WebView$InvokeListBox;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView$InvokeListBox;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox$Container;->this$1:Landroid/webkit/WebView$InvokeListBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebView$InvokeListBox$Container;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$Container;->mString:Ljava/lang/String;

    return-object v0
.end method
