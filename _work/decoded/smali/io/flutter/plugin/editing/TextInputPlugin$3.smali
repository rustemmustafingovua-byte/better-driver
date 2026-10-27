.class Lio/flutter/plugin/editing/TextInputPlugin$3;
.super Ljava/lang/Object;
.source "TextInputPlugin.java"

# interfaces
.implements Lio/flutter/plugin/editing/TextInputPlugin$MinMax;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/editing/TextInputPlugin;->saveEditableSizeAndTransform(DD[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/editing/TextInputPlugin;

.field final synthetic val$isAffine:Z

.field final synthetic val$matrix:[D

.field final synthetic val$minMax:[D


# direct methods
.method constructor <init>(Lio/flutter/plugin/editing/TextInputPlugin;Z[D[D)V
    .locals 0
    .param p1, "this$0"    # Lio/flutter/plugin/editing/TextInputPlugin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 541
    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    iput-boolean p2, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$isAffine:Z

    iput-object p3, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$matrix:[D

    iput-object p4, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$minMax:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inspect(DD)V
    .locals 12
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 544
    iget-boolean v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$isAffine:Z

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$matrix:[D

    aget-wide v4, v0, v3

    mul-double/2addr v4, p1

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$matrix:[D

    const/4 v6, 0x7

    aget-wide v6, v0, v6

    mul-double/2addr v6, p3

    add-double/2addr v4, v6

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$matrix:[D

    const/16 v6, 0xf

    aget-wide v6, v0, v6

    add-double/2addr v4, v6

    div-double/2addr v1, v4

    .line 545
    .local v1, "w":D
    :goto_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$matrix:[D

    const/4 v4, 0x0

    aget-wide v5, v0, v4

    mul-double/2addr v5, p1

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$matrix:[D

    const/4 v7, 0x4

    aget-wide v7, v0, v7

    mul-double/2addr v7, p3

    add-double/2addr v5, v7

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$matrix:[D

    const/16 v7, 0xc

    aget-wide v7, v0, v7

    add-double/2addr v5, v7

    mul-double/2addr v5, v1

    .line 546
    .local v5, "tx":D
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$matrix:[D

    const/4 v7, 0x1

    aget-wide v8, v0, v7

    mul-double/2addr v8, p1

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$matrix:[D

    const/4 v10, 0x5

    aget-wide v10, v0, v10

    mul-double/2addr v10, p3

    add-double/2addr v8, v10

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$matrix:[D

    const/16 v10, 0xd

    aget-wide v10, v0, v10

    add-double/2addr v8, v10

    mul-double/2addr v8, v1

    .line 548
    .local v8, "ty":D
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$minMax:[D

    aget-wide v10, v0, v4

    cmpg-double v0, v5, v10

    if-gez v0, :cond_1

    .line 549
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$minMax:[D

    aput-wide v5, v0, v4

    goto :goto_1

    .line 550
    :cond_1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$minMax:[D

    aget-wide v10, v0, v7

    cmpl-double v0, v5, v10

    if-lez v0, :cond_2

    .line 551
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$minMax:[D

    aput-wide v5, v0, v7

    .line 554
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$minMax:[D

    const/4 v4, 0x2

    aget-wide v10, v0, v4

    cmpg-double v0, v8, v10

    if-gez v0, :cond_3

    .line 555
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$minMax:[D

    aput-wide v8, v0, v4

    goto :goto_2

    .line 556
    :cond_3
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$minMax:[D

    aget-wide v10, v0, v3

    cmpl-double v0, v8, v10

    if-lez v0, :cond_4

    .line 557
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$minMax:[D

    aput-wide v8, v0, v3

    .line 559
    :cond_4
    :goto_2
    return-void
.end method
