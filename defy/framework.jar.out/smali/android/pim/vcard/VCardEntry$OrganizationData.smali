.class public Landroid/pim/vcard/VCardEntry$OrganizationData;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrganizationData"
.end annotation


# instance fields
.field public companyName:Ljava/lang/String;

.field public departmentName:Ljava/lang/String;

.field public isPrimary:Z

.field public final phoneticName:Ljava/lang/String;

.field public titleName:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "type"
    .parameter "companyName"
    .parameter "departmentName"
    .parameter "titleName"
    .parameter "phoneticName"
    .parameter "isPrimary"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->type:I

    iput-object p2, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    iput-object p3, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    iput-object p4, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    iput-object p5, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    iput-boolean p6, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    instance-of v2, p1, Landroid/pim/vcard/VCardEntry$OrganizationData;

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/pim/vcard/VCardEntry$OrganizationData;

    move-object v1, v0

    .local v1, organization:Landroid/pim/vcard/VCardEntry$OrganizationData;
    iget v2, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->type:I

    iget v3, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->type:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    iget-object v3, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    iget-object v3, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    iget-object v3, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    iget-boolean v3, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public getFormattedString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, ", "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v0, "type: %d, company: %s, department: %s, title: %s, isPrimary: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Landroid/pim/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
