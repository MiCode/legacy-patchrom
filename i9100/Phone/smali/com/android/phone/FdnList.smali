.class public Lcom/android/phone/FdnList;
.super Lcom/android/phone/ADNList;
.source "FdnList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/ADNList;-><init>()V

    return-void
.end method

.method private addContact()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    const-class v1, Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method private deleteSelected()V
    .locals 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 147
    const-class v4, Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 148
    const-string v4, "name"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v0, "number"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v0, "adn_index"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v3}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 153
    :cond_0
    return-void
.end method

.method private editSelected()V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/FdnList;->editSelected(I)V

    .line 120
    return-void
.end method

.method private editSelected(I)V
    .locals 5
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    const-string v3, "FdnList"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 132
    const-class v4, Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    const-string v4, "name"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v0, "number"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v0, "adn_index"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v3}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0d0138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 60
    const/4 v1, 0x2

    const v2, 0x7f0d0139

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 62
    const/4 v1, 0x3

    const v2, 0x7f0d013a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 64
    return v4
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 101
    invoke-direct {p0, p3}, Lcom/android/phone/FdnList;->editSelected(I)V

    .line 102
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 83
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/FdnList;->addContact()V

    move v0, v1

    .line 84
    goto :goto_0

    .line 87
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/FdnList;->editSelected()V

    move v0, v1

    .line 88
    goto :goto_0

    .line 91
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/FdnList;->deleteSelected()V

    move v0, v1

    .line 92
    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 70
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_0

    move v0, v2

    .line 72
    .local v0, hasSelection:Z
    :goto_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 73
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 74
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 76
    return v2

    .line 70
    .end local v0           #hasSelection:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://icc/fdn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 48
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
