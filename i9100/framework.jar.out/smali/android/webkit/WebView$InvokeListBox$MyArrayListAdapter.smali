.class Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView$InvokeListBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyArrayListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/webkit/WebView$InvokeListBox$Container;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$InvokeListBox;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView$InvokeListBox;Landroid/content/Context;[Landroid/webkit/WebView$InvokeListBox$Container;Z)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "objects"
    .parameter "multiple"

    .prologue
    .line 10127
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebView$InvokeListBox;

    .line 10129
    if-eqz p4, :cond_0

    const v0, 0x1090085

    :goto_0
    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 10138
    return-void

    .line 10129
    :cond_0
    const v0, 0x1090086

    goto :goto_0
.end method

.method private item(I)Landroid/webkit/WebView$InvokeListBox$Container;
    .locals 1
    .parameter "position"

    .prologue
    .line 10197
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 10198
    :cond_0
    const/4 v0, 0x0

    .line 10200
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebView$InvokeListBox$Container;

    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 10214
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 10205
    invoke-direct {p0, p1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkit/WebView$InvokeListBox$Container;

    move-result-object v0

    .line 10206
    .local v0, item:Landroid/webkit/WebView$InvokeListBox$Container;
    if-nez v0, :cond_0

    .line 10207
    const-wide/16 v1, -0x1

    .line 10209
    :goto_0
    return-wide v1

    :cond_0
    iget v1, v0, Landroid/webkit/WebView$InvokeListBox$Container;->mId:I

    int-to-long v1, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const v8, 0x1080012

    const/4 v7, 0x1

    .line 10148
    invoke-super {p0, p1, v9, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 10149
    invoke-direct {p0, p1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkit/WebView$InvokeListBox$Container;

    move-result-object v1

    .line 10150
    .local v1, c:Landroid/webkit/WebView$InvokeListBox$Container;
    if-eqz v1, :cond_3

    iget v5, v1, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    if-eq v7, v5, :cond_3

    .line 10153
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v5, v5, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebView;->access$12900(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10154
    .local v4, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 10155
    if-lez p1, :cond_0

    .line 10156
    new-instance v3, Landroid/view/View;

    iget-object v5, p0, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v5, v5, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebView;->access$13000(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10157
    .local v3, dividerTop:Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 10159
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 10162
    .end local v3           #dividerTop:Landroid/view/View;
    :cond_0
    const/4 v5, -0x1

    iget v6, v1, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    if-ne v5, v6, :cond_2

    .line 10166
    instance-of v5, p2, Landroid/widget/CheckedTextView;

    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 10168
    move-object v0, p2

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v5, v0

    invoke-virtual {v5, v9}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10176
    :goto_0
    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 10177
    invoke-virtual {p0}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v7

    if-ge p1, v5, :cond_1

    .line 10178
    new-instance v2, Landroid/view/View;

    iget-object v5, p0, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v5, v5, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebView;->access$13100(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10179
    .local v2, dividerBottom:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 10181
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .end local v2           #dividerBottom:Landroid/view/View;
    :cond_1
    move-object v5, v4

    .line 10185
    .end local v4           #layout:Landroid/widget/LinearLayout;
    :goto_1
    return-object v5

    .line 10173
    .restart local v4       #layout:Landroid/widget/LinearLayout;
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .end local v4           #layout:Landroid/widget/LinearLayout;
    :cond_3
    move-object v5, p2

    .line 10185
    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 10193
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10219
    invoke-direct {p0, p1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkit/WebView$InvokeListBox$Container;

    move-result-object v0

    .line 10220
    .local v0, item:Landroid/webkit/WebView$InvokeListBox$Container;
    if-nez v0, :cond_0

    move v1, v2

    .line 10223
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    if-ne v3, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method
