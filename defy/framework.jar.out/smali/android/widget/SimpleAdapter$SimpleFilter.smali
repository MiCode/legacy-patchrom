.class Landroid/widget/SimpleAdapter$SimpleFilter;
.super Landroid/widget/Filter;
.source "SimpleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SimpleAdapter;


# direct methods
.method private constructor <init>(Landroid/widget/SimpleAdapter;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SimpleAdapter;Landroid/widget/SimpleAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SimpleAdapter$SimpleFilter;-><init>(Landroid/widget/SimpleAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 20
    .parameter "prefix"

    .prologue
    new-instance v11, Landroid/widget/Filter$FilterResults;

    invoke-direct {v11}, Landroid/widget/Filter$FilterResults;-><init>()V

    .local v11, results:Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    move-object/from16 v17, v0

    #getter for: Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Landroid/widget/SimpleAdapter;->access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Landroid/widget/SimpleAdapter;->access$200(Landroid/widget/SimpleAdapter;)Ljava/util/List;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #setter for: Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v18}, Landroid/widget/SimpleAdapter;->access$102(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-nez v17, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    move-object/from16 v17, v0

    #getter for: Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Landroid/widget/SimpleAdapter;->access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object v8, v11, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move-object v1, v11

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :goto_0
    return-object v11

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .local v10, prefixString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    move-object/from16 v17, v0

    #getter for: Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Landroid/widget/SimpleAdapter;->access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v13

    .local v13, unfilteredValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, count:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .local v9, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_6

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .local v3, h:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    move-object/from16 v17, v0

    #getter for: Landroid/widget/SimpleAdapter;->mTo:[I
    invoke-static/range {v17 .. v17}, Landroid/widget/SimpleAdapter;->access$300(Landroid/widget/SimpleAdapter;)[I

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move v7, v0

    .local v7, len:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    if-ge v5, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    move-object/from16 v17, v0

    #getter for: Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/widget/SimpleAdapter;->access$400(Landroid/widget/SimpleAdapter;)[Ljava/lang/String;

    move-result-object v17

    aget-object v17, v17, v5

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, str:Ljava/lang/String;
    const-string v17, " "

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .local v16, words:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move v15, v0

    .local v15, wordCount:I
    const/4 v6, 0x0

    .local v6, k:I
    :goto_3
    if-ge v6, v15, :cond_3

    aget-object v14, v16, v6

    .local v14, word:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v14           #word:Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .restart local v14       #word:Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v5           #j:I
    .end local v6           #k:I
    .end local v7           #len:I
    .end local v12           #str:Ljava/lang/String;
    .end local v14           #word:Ljava/lang/String;
    .end local v15           #wordCount:I
    .end local v16           #words:[Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v3           #h:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_6
    iput-object v9, v11, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move-object v1, v11

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    iget-object v1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    #setter for: Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;
    invoke-static {v1, v0}, Landroid/widget/SimpleAdapter;->access$202(Landroid/widget/SimpleAdapter;Ljava/util/List;)Ljava/util/List;

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
