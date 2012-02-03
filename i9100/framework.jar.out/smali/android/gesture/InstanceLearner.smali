.class Landroid/gesture/InstanceLearner;
.super Landroid/gesture/Learner;
.source "InstanceLearner.java"


# static fields
.field private static final sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/gesture/InstanceLearner$1;

    invoke-direct {v0}, Landroid/gesture/InstanceLearner$1;-><init>()V

    sput-object v0, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/gesture/Learner;-><init>()V

    return-void
.end method


# virtual methods
.method classify(II[F)Ljava/util/ArrayList;
    .locals 20
    .parameter "sequenceType"
    .parameter "orientationType"
    .parameter "vector"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[F)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v12, predictions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/InstanceLearner;->getInstances()Ljava/util/ArrayList;

    move-result-object v9

    .line 47
    .local v9, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Instance;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 48
    .local v4, count:I
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 49
    .local v10, label2score:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v4, :cond_5

    .line 50
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/gesture/Instance;

    .line 51
    .local v13, sample:Landroid/gesture/Instance;
    move-object v0, v13

    iget-object v0, v0, Landroid/gesture/Instance;->vector:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 49
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 56
    move-object v0, v13

    iget-object v0, v0, Landroid/gesture/Instance;->vector:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/gesture/GestureUtils;->minimumCosineDistance([F[FI)F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide v5, v0

    .line 61
    .local v5, distance:D
    :goto_2
    const-wide/16 v18, 0x0

    cmpl-double v18, v5, v18

    if-nez v18, :cond_4

    .line 62
    const-wide v16, 0x7fefffffffffffffL

    .line 66
    .local v16, weight:D
    :goto_3
    move-object v0, v13

    iget-object v0, v0, Landroid/gesture/Instance;->label:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    .line 67
    .local v14, score:Ljava/lang/Double;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    cmpl-double v18, v16, v18

    if-lez v18, :cond_0

    .line 68
    :cond_2
    move-object v0, v13

    iget-object v0, v0, Landroid/gesture/Instance;->label:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 58
    .end local v5           #distance:D
    .end local v14           #score:Ljava/lang/Double;
    .end local v16           #weight:D
    :cond_3
    move-object v0, v13

    iget-object v0, v0, Landroid/gesture/Instance;->vector:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/gesture/GestureUtils;->squaredEuclideanDistance([F[F)F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide v5, v0

    .restart local v5       #distance:D
    goto :goto_2

    .line 64
    :cond_4
    const-wide/high16 v18, 0x3ff0

    div-double v16, v18, v5

    .restart local v16       #weight:D
    goto :goto_3

    .line 73
    .end local v5           #distance:D
    .end local v13           #sample:Landroid/gesture/Instance;
    .end local v16           #weight:D
    :cond_5
    invoke-virtual {v10}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local p0
    .local v8, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 74
    .local v11, name:Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 76
    .local v14, score:D
    new-instance v18, Landroid/gesture/Prediction;

    move-object/from16 v0, v18

    move-object v1, v11

    move-wide v2, v14

    invoke-direct {v0, v1, v2, v3}, Landroid/gesture/Prediction;-><init>(Ljava/lang/String;D)V

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 84
    .end local v11           #name:Ljava/lang/String;
    .end local v14           #score:D
    :cond_6
    sget-object v18, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    return-object v12
.end method
