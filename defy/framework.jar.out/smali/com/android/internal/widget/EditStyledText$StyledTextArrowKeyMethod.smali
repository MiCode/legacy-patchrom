.class Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;
.super Landroid/text/method/ArrowKeyMovementMethod;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StyledTextArrowKeyMethod"
.end annotation


# instance fields
.field mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

.field final synthetic this$0:Lcom/android/internal/widget/EditStyledText;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/EditStyledText;Lcom/android/internal/widget/EditStyledText$EditorManager;)V
    .locals 0
    .parameter
    .parameter "manager"

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->this$0:Lcom/android/internal/widget/EditStyledText;

    invoke-direct {p0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    return-void
.end method

.method private down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 8
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .local v2, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->getEndPos(Landroid/widget/TextView;)I

    move-result v0

    .local v0, end:I
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .local v3, line:I
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    sub-int/2addr v5, v7

    if-ge v3, v5, :cond_1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .local v1, h:F
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .end local v1           #h:F
    .local v4, to:I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectedEndPos(I)V

    iget-object v5, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v5}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onCursorMoved()V

    move v5, v7

    .end local v4           #to:I
    :goto_1
    return v5

    :cond_0
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .restart local v4       #to:I
    goto :goto_0

    .end local v4           #to:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 2
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"

    .prologue
    const/4 v0, 0x0

    .local v0, handled:Z
    packed-switch p3, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onFixSelectedItem()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getEndPos(Landroid/widget/TextView;)I
    .locals 3
    .parameter "widget"

    .prologue
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, end:I
    :goto_0
    return v0

    .end local v0           #end:I
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .restart local v0       #end:I
    goto :goto_0
.end method

.method private left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3
    .parameter "widget"
    .parameter "buffer"

    .prologue
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .local v0, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->getEndPos(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .local v1, to:I
    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectedEndPos(I)V

    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onCursorMoved()V

    const/4 v2, 0x1

    return v2
.end method

.method private right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3
    .parameter "widget"
    .parameter "buffer"

    .prologue
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .local v0, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->getEndPos(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .local v1, to:I
    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectedEndPos(I)V

    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onCursorMoved()V

    const/4 v2, 0x1

    return v2
.end method

.method private up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 8
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .local v2, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->getEndPos(Landroid/widget/TextView;)I

    move-result v0

    .local v0, end:I
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .local v3, line:I
    if-lez v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    sub-int v6, v3, v7

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .local v1, h:F
    sub-int v5, v3, v7

    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .end local v1           #h:F
    .local v4, to:I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectedEndPos(I)V

    iget-object v5, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v5}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onCursorMoved()V

    move v5, v7

    .end local v4           #to:I
    :goto_1
    return v5

    :cond_0
    sub-int v5, v3, v7

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .restart local v4       #to:I
    goto :goto_0

    .end local v4           #to:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->isSoftKeyBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/ArrowKeyMovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
