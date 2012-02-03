.class abstract Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;
.super Ljava/lang/Object;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 124
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 126
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 132
    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x5

    .line 236
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 252
    :goto_0
    return v0

    .line 246
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 252
    goto :goto_0

    .line 248
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "PowerSavingModeWidgetProvider"

    .line 184
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 185
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_0

    .line 203
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    .line 207
    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 208
    const-string v1, "PowerSavingModeWidgetProvider"

    const-string v1, "processing deferred state change"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    const-string v1, "PowerSavingModeWidgetProvider"

    const-string v1, "... but intended state matches, so no changes."

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 219
    :cond_1
    return-void

    .line 187
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 188
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 191
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 192
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 195
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 196
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 199
    :pswitch_3
    iput-boolean v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 200
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 213
    iput-boolean v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 214
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 141
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 142
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_0

    .line 155
    :pswitch_0
    const-string v2, "PowerSavingModeWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleState() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 159
    iget-boolean v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v2, :cond_2

    .line 164
    iput-boolean v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 169
    :goto_1
    return-void

    .line 144
    :pswitch_1
    const/4 v1, 0x0

    .line 145
    goto :goto_0

    .line 147
    :pswitch_2
    const/4 v1, 0x1

    .line 148
    goto :goto_0

    .line 150
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v5

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_2

    .line 166
    :cond_2
    iput-boolean v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 167
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
