.class public Lcom/android/internal/telephony/gsm/RestrictedState;
.super Ljava/lang/Object;
.source "RestrictedState.java"


# instance fields
.field private mCsEmergencyRestricted:Z

.field private mCsNormalRestricted:Z

.field private mPsRestricted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/RestrictedState;->setPsRestricted(Z)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/RestrictedState;->setCsNormalRestricted(Z)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/RestrictedState;->setCsEmergencyRestricted(Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/RestrictedState;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, s:Lcom/android/internal/telephony/gsm/RestrictedState;
    if-nez p1, :cond_0

    move v3, v5

    .end local v2           #s:Lcom/android/internal/telephony/gsm/RestrictedState;
    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/ClassCastException;
    move v3, v5

    goto :goto_0

    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Lcom/android/internal/telephony/gsm/RestrictedState;
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mPsRestricted:Z

    iget-boolean v4, v2, Lcom/android/internal/telephony/gsm/RestrictedState;->mPsRestricted:Z

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsNormalRestricted:Z

    iget-boolean v4, v2, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsNormalRestricted:Z

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsEmergencyRestricted:Z

    iget-boolean v4, v2, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsEmergencyRestricted:Z

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0
.end method

.method public isCsEmergencyRestricted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsEmergencyRestricted:Z

    return v0
.end method

.method public isCsNormalRestricted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsNormalRestricted:Z

    return v0
.end method

.method public isCsRestricted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsNormalRestricted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsEmergencyRestricted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPsRestricted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mPsRestricted:Z

    return v0
.end method

.method public setCsEmergencyRestricted(Z)V
    .locals 0
    .parameter "csEmergencyRestricted"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsEmergencyRestricted:Z

    return-void
.end method

.method public setCsNormalRestricted(Z)V
    .locals 0
    .parameter "csNormalRestricted"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsNormalRestricted:Z

    return-void
.end method

.method public setPsRestricted(Z)V
    .locals 0
    .parameter "psRestricted"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mPsRestricted:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v0, "none"

    .local v0, csString:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsEmergencyRestricted:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsNormalRestricted:Z

    if-eqz v1, :cond_1

    const-string v0, "all"

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restricted State CS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mPsRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsEmergencyRestricted:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsNormalRestricted:Z

    if-nez v1, :cond_2

    const-string v0, "emergency"

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsEmergencyRestricted:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsNormalRestricted:Z

    if-eqz v1, :cond_0

    const-string v0, "normal call"

    goto :goto_0
.end method
