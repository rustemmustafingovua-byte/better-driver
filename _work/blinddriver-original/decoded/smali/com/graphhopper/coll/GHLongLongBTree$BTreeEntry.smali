.class Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/coll/GHLongLongBTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BTreeEntry"
.end annotation


# instance fields
.field children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

.field entrySize:I

.field isLeaf:Z

.field keys:[J

.field final synthetic this$0:Lcom/graphhopper/coll/GHLongLongBTree;

.field values:[B


# direct methods
.method public constructor <init>(Lcom/graphhopper/coll/GHLongLongBTree;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->isLeaf:Z

    new-array p3, p2, [J

    iput-object p3, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    invoke-static {p1}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result p1

    mul-int/2addr p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->values:[B

    iget-boolean p1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->isLeaf:Z

    if-nez p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    new-array p1, p2, [Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    iput-object p1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    :cond_0
    return-void
.end method


# virtual methods
.method public checkSplitEntry()Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;
    .locals 8

    iget v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->entrySize:I

    iget-object v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v1}, Lcom/graphhopper/coll/GHLongLongBTree;->e(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->entrySize:I

    iget-object v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v1}, Lcom/graphhopper/coll/GHLongLongBTree;->f(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-instance v2, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    iget-object v3, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v3}, Lcom/graphhopper/coll/GHLongLongBTree;->d(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-boolean v5, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->isLeaf:Z

    invoke-direct {v2, v3, v4, v5}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;-><init>(Lcom/graphhopper/coll/GHLongLongBTree;IZ)V

    iget-object v3, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v3}, Lcom/graphhopper/coll/GHLongLongBTree;->f(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p0, v2, v3, v0}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->copy(Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;II)V

    new-instance v0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    iget-object v3, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v3}, Lcom/graphhopper/coll/GHLongLongBTree;->d(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v4

    iget-object v5, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v5}, Lcom/graphhopper/coll/GHLongLongBTree;->f(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-boolean v5, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->isLeaf:Z

    invoke-direct {v0, v3, v4, v5}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;-><init>(Lcom/graphhopper/coll/GHLongLongBTree;IZ)V

    iget-object v3, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v3}, Lcom/graphhopper/coll/GHLongLongBTree;->f(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, p0, v0, v4, v3}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->copy(Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;II)V

    new-instance v3, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    iget-object v5, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-direct {v3, v5, v1, v4}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;-><init>(Lcom/graphhopper/coll/GHLongLongBTree;IZ)V

    iput v1, v3, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->entrySize:I

    iget-object v5, v3, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    iget-object v6, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    iget-object v7, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v7}, Lcom/graphhopper/coll/GHLongLongBTree;->f(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v7

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4

    iget-object v5, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->values:[B

    iget-object v6, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v6}, Lcom/graphhopper/coll/GHLongLongBTree;->f(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v6

    iget-object v7, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v7}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v7

    mul-int/2addr v7, v6

    iget-object v6, v3, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->values:[B

    iget-object p0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {p0}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result p0

    invoke-static {v5, v7, v6, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, v3, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    aput-object v0, p0, v4

    aput-object v2, p0, v1

    return-object v3
.end method

.method public compact()V
    .locals 4

    iget v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->entrySize:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    array-length v3, v2

    if-ge v1, v3, :cond_0

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    iget-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->values:[B

    iget v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->entrySize:I

    iget-object v2, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v2}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v2

    mul-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->values:[B

    iget-boolean v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->isLeaf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    iget v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->entrySize:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    iput-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    :cond_0
    iget-boolean v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->isLeaf:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->compact()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public copy(Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;II)V
    .locals 4

    iget-object v0, p1, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    iget-object v1, p2, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    const/4 v2, 0x0

    invoke-static {v0, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->values:[B

    iget-object v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v1}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v1

    mul-int/2addr v1, p3

    iget-object v3, p2, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->values:[B

    iget-object p0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {p0}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result p0

    mul-int/2addr p0, p4

    invoke-static {v0, v1, v3, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p0, p1, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->isLeaf:Z

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    iget-object p1, p2, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    add-int/lit8 v0, p4, 0x1

    invoke-static {p0, p3, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput p4, p2, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->entrySize:I

    return-void
.end method

.method public ensureSize(I)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    array-length v0, v0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v0}, Lcom/graphhopper/coll/GHLongLongBTree;->e(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    int-to-float p1, p1

    iget-object v2, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v2}, Lcom/graphhopper/coll/GHLongLongBTree;->c(Lcom/graphhopper/coll/GHLongLongBTree;)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    iget-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->values:[B

    iget-object v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v1}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v1

    mul-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->values:[B

    iget-boolean v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->isLeaf:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    iput-object p1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    :cond_1
    :goto_0
    return-void
.end method

.method public get(J)J
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->entrySize:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/graphhopper/coll/GHLongLongBTree;->binarySearch([JIIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    iget-object p0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->values:[B

    invoke-static {p1}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result p2

    mul-int/2addr p2, v0

    invoke-virtual {p1, p0, p2}, Lcom/graphhopper/coll/GHLongLongBTree;->toLong([BI)J

    move-result-wide p0

    return-wide p0

    :cond_0
    not-int v0, v0

    iget-boolean v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->isLeaf:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    aget-object v0, v1, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->get(J)J

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {p0}, Lcom/graphhopper/coll/GHLongLongBTree;->b(Lcom/graphhopper/coll/GHLongLongBTree;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getCapacity()J
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x29

    int-to-long v0, v0

    iget-boolean v2, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->isLeaf:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    add-long/2addr v0, v2

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->getCapacity()J

    move-result-wide v3

    add-long/2addr v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public getEntries()I
    .locals 4

    iget-boolean v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->isLeaf:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->getEntries()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public insertKeyValue(IJ[B)V
    .locals 7

    iget v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->entrySize:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->ensureSize(I)V

    iget v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->entrySize:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->values:[B

    iget-object v3, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v3}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v3

    mul-int/2addr v3, p1

    iget-object v4, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->values:[B

    iget-object v5, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v5}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v5

    mul-int/2addr v5, p1

    iget-object v6, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v6}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v6

    add-int/2addr v6, v5

    iget-object v5, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v5}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v5

    mul-int/2addr v5, v0

    invoke-static {v1, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->isLeaf:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    add-int/lit8 v3, p1, 0x2

    invoke-static {v1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    aput-wide p2, v0, p1

    iget-object p2, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->values:[B

    iget-object p3, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {p3}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result p3

    mul-int/2addr p3, p1

    iget-object p1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {p1}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p4, v0, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->entrySize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->entrySize:I

    return-void
.end method

.method public insertTree(ILcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;)V
    .locals 4

    iget-object v0, p2, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iget-object v0, p2, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->values:[B

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->insertKeyValue(IJ[B)V

    iget-boolean v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->isLeaf:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    iget-object p2, p2, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    aget-object v0, p2, v1

    aput-object v0, p0, p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aget-object p2, p2, v0

    aput-object p2, p0, p1

    :cond_0
    return-void
.end method

.method public put(JJ)Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    iget v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->entrySize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Lcom/graphhopper/coll/GHLongLongBTree;->binarySearch([JIIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {p1}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result p1

    new-array p1, p1, [B

    iget-object p2, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->values:[B

    iget-object v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v1}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v3, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v3}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v3

    invoke-static {p2, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    iget-object p0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->values:[B

    invoke-static {p2}, Lcom/graphhopper/coll/GHLongLongBTree;->a(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p2, p0, p3, p4, v1}, Lcom/graphhopper/coll/GHLongLongBTree;->fromLong([BJI)V

    new-instance p0, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;

    invoke-direct {p0, p1}, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;-><init>([B)V

    return-object p0

    :cond_0
    not-int v0, v0

    iget-boolean v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->isLeaf:Z

    const/4 v3, 0x1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->put(JJ)Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;

    move-result-object p1

    iget-object p2, p1, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;->oldValue:[B

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;->tree:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->checkSplitEntry()Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    move-result-object p2

    if-nez p2, :cond_3

    iget-object p3, p1, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;->tree:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    invoke-virtual {p0, v0, p3}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->insertTree(ILcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;)V

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {p3}, Lcom/graphhopper/coll/GHLongLongBTree;->f(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result p3

    if-gt v0, p3, :cond_4

    iget-object p0, p2, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    aget-object p0, p0, v2

    iget-object p3, p1, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;->tree:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    invoke-virtual {p0, v0, p3}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->insertTree(ILcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;)V

    goto :goto_0

    :cond_4
    iget-object p3, p2, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    aget-object p3, p3, v3

    iget-object p0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {p0}, Lcom/graphhopper/coll/GHLongLongBTree;->f(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result p0

    sub-int/2addr v0, p0

    sub-int/2addr v0, v3

    iget-object p0, p1, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;->tree:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    invoke-virtual {p3, v0, p0}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->insertTree(ILcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;)V

    :goto_0
    iput-object p2, p1, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;->tree:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    :cond_5
    :goto_1
    return-object p1

    :cond_6
    :goto_2
    new-instance v1, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;-><init>([B)V

    invoke-virtual {p0}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->checkSplitEntry()Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    move-result-object v4

    iput-object v4, v1, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;->tree:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    if-nez v4, :cond_7

    iget-object v2, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-virtual {v2, p3, p4}, Lcom/graphhopper/coll/GHLongLongBTree;->fromLong(J)[B

    move-result-object p3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->insertKeyValue(IJ[B)V

    return-object v1

    :cond_7
    iget-object v4, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v4}, Lcom/graphhopper/coll/GHLongLongBTree;->f(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v4

    if-gt v0, v4, :cond_8

    iget-object v3, v1, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;->tree:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    iget-object v3, v3, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    aget-object v2, v3, v2

    iget-object p0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-virtual {p0, p3, p4}, Lcom/graphhopper/coll/GHLongLongBTree;->fromLong(J)[B

    move-result-object p0

    invoke-virtual {v2, v0, p1, p2, p0}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->insertKeyValue(IJ[B)V

    return-object v1

    :cond_8
    iget-object v2, v1, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;->tree:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    iget-object v2, v2, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    aget-object v2, v2, v3

    iget-object v4, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-static {v4}, Lcom/graphhopper/coll/GHLongLongBTree;->f(Lcom/graphhopper/coll/GHLongLongBTree;)I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, v3

    iget-object p0, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->this$0:Lcom/graphhopper/coll/GHLongLongBTree;

    invoke-virtual {p0, p3, p4}, Lcom/graphhopper/coll/GHLongLongBTree;->fromLong(J)[B

    move-result-object p0

    invoke-virtual {v2, v0, p1, p2, p0}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->insertKeyValue(IJ[B)V

    return-object v1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->entrySize:I

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    const-string v3, ","

    invoke-static {v0, v3}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->keys:[J

    aget-wide v3, v3, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "\n"

    invoke-static {v0, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->isLeaf:Z

    if-nez v2, :cond_3

    :goto_1
    iget v2, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->entrySize:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->children:[Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "| "

    invoke-static {v0, v2, v3}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method
