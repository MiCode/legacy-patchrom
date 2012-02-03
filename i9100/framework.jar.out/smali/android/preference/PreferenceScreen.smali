.class public final Landroid/preference/PreferenceScreen;
.super Landroid/preference/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 148
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 149
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 152
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 153
    .local v3, title:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Dialog;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x1030006

    :goto_0
    invoke-direct {v1, v0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 156
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 157
    invoke-static {v1, v2}, Lmiui/preference/PreferenceActivityListener;->onShowDialog(Landroid/app/Dialog;Landroid/widget/ListView;)V

    .line 158
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    :cond_0
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 161
    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 166
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 168
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 169
    return-void

    .line 153
    .end local v1           #dialog:Landroid/app/Dialog;
    :cond_2
    const v4, 0x1030005

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    .line 131
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onAttachedToActivity()V

    .line 135
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 110
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 120
    invoke-static {p0}, Landroid/preference/MiuiClassFactory;->newPreferenceGroupAdapter(Landroid/preference/PreferenceGroup;)Landroid/preference/PreferenceGroupAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 173
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 174
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 187
    .local v1, item:Ljava/lang/Object;
    instance-of v3, v1, Landroid/preference/Preference;

    if-nez v3, :cond_0

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    move-object v0, v1

    check-cast v0, Landroid/preference/Preference;

    move-object v2, v0

    .line 190
    .local v2, preference:Landroid/preference/Preference;
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 214
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/preference/PreferenceScreen$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 216
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 225
    :cond_1
    :goto_0
    return-void

    .line 220
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceScreen$SavedState;

    move-object v1, v0

    .line 221
    .local v1, myState:Landroid/preference/PreferenceScreen$SavedState;
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 222
    iget-boolean v2, v1, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, v1, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 200
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 201
    .local v2, superState:Landroid/os/Parcelable;
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 202
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v2

    .line 209
    :goto_0
    return-object v3

    .line 206
    :cond_1
    new-instance v1, Landroid/preference/PreferenceScreen$SavedState;

    invoke-direct {v1, v2}, Landroid/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 207
    .local v1, myState:Landroid/preference/PreferenceScreen$SavedState;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    .line 208
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    move-object v3, v1

    .line 209
    goto :goto_0
.end method
