.class final Lcom/motorola/blur/setup/EmailAccountsListSyncActivity$ExtSimpleCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "EmailAccountsListSyncActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtSimpleCursorAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 0
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 138
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 139
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 163
    if-nez p2, :cond_0

    .line 164
    iget-object v4, p0, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity$ExtSimpleCursorAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity$ExtSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v4, v5, p3}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity$ExtSimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 169
    .local v1, retView:Landroid/view/View;
    :goto_0
    const v4, 0x7f0b00b6

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 170
    .local v0, chk:Landroid/widget/CheckedTextView;
    const v4, 0x7f0b00b4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 171
    .local v2, text1:Landroid/widget/TextView;
    const v4, 0x7f0b00b5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 173
    .local v3, text2:Landroid/widget/TextView;
    if-nez p1, :cond_1

    .line 174
    invoke-virtual {v0, v6}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 175
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v4, v1

    .line 194
    :goto_1
    return-object v4

    .line 166
    .end local v0           #chk:Landroid/widget/CheckedTextView;
    .end local v1           #retView:Landroid/view/View;
    .end local v2           #text1:Landroid/widget/TextView;
    .end local v3           #text2:Landroid/widget/TextView;
    :cond_0
    move-object v1, p2

    .restart local v1       #retView:Landroid/view/View;
    goto :goto_0

    .line 178
    .restart local v0       #chk:Landroid/widget/CheckedTextView;
    .restart local v2       #text1:Landroid/widget/TextView;
    .restart local v3       #text2:Landroid/widget/TextView;
    :cond_1
    if-ne p1, v8, :cond_2

    .line 179
    invoke-virtual {v0, v6}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 180
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v4, v1

    .line 182
    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity$ExtSimpleCursorAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v8

    if-ne p1, v4, :cond_3

    .line 184
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 185
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v4, v1

    .line 187
    goto :goto_1

    .line 190
    :cond_3
    invoke-virtual {v0, v7}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 191
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    const/4 v4, 0x2

    sub-int v4, p1, v4

    invoke-super {p0, v4, v1, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    if-nez p1, :cond_0

    move v0, v1

    .line 157
    :goto_0
    return v0

    .line 151
    :cond_0
    if-ne p1, v2, :cond_1

    move v0, v1

    .line 152
    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity$ExtSimpleCursorAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 155
    goto :goto_0

    :cond_2
    move v0, v2

    .line 157
    goto :goto_0
.end method
