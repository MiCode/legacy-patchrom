.class Landroid/widget/TextView$InputContentType;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputContentType"
.end annotation


# instance fields
.field enterDown:Z

.field extras:Landroid/os/Bundle;

.field imeActionId:I

.field imeActionLabel:Ljava/lang/CharSequence;

.field imeOptions:I

.field onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field privateImeOptions:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/TextView$InputContentType;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    return-void
.end method
