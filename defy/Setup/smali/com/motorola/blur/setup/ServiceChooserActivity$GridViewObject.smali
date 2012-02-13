.class Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;
.super Ljava/lang/Object;
.source "ServiceChooserActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/ServiceChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridViewObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountId:J

.field private mAccountType:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mMultipleAccountsAllowed:Z

.field private mProviderId:J


# direct methods
.method constructor <init>(Ljava/lang/String;JJZ)V
    .locals 4
    .parameter "displayName"
    .parameter "providerId"
    .parameter "accountId"
    .parameter "multipleAccountsAllowed"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-wide p2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mProviderId:J

    .line 170
    iput-wide p4, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mAccountId:J

    .line 171
    iput-boolean p6, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mMultipleAccountsAllowed:Z

    .line 172
    iget-wide v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mProviderId:J

    invoke-static {}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$000()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mProviderId:J

    invoke-static {}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$100()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 173
    :cond_0
    invoke-static {}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$300()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mDisplayName:Ljava/lang/String;

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_1
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$800(Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)I
    .locals 3
    .parameter "o"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mDisplayName:Ljava/lang/String;

    .line 214
    .local v0, str1:Ljava/lang/String;
    iget-object v1, p1, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mDisplayName:Ljava/lang/String;

    .line 215
    .local v1, str2:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    check-cast p1, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->compareTo(Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)I

    move-result v0

    return v0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mAccountId:J

    return-wide v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProviderId()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mProviderId:J

    return-wide v0
.end method

.method public isMultipleAccountsAllowed()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mMultipleAccountsAllowed:Z

    return v0
.end method

.method public setAccountId(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 202
    iput-wide p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mAccountId:J

    .line 203
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0
    .parameter "accountType"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mAccountType:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 220
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridViewObject:providerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mProviderId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",accountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",multi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mMultipleAccountsAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",accountType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
