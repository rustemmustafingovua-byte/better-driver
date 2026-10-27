.class public final Lf8/l5;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lf8/k4;
.implements Ljava/util/RandomAccess;


# instance fields
.field public final l:Lf8/j4;


# direct methods
.method public constructor <init>(Lf8/j4;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lf8/l5;->l:Lf8/j4;

    return-void
.end method


# virtual methods
.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lf8/l5;->l:Lf8/j4;

    iget-object p0, p0, Lf8/j4;->m:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf8/l5;->l:Lf8/j4;

    invoke-virtual {p0, p1}, Lf8/j4;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final h(Lf8/j;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final i()Lf8/k4;
    .locals 0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lf8/k5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lf8/l5;->l:Lf8/j4;

    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    iput-object p0, v0, Lf8/k5;->l:Ljava/util/Iterator;

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lf8/j5;

    invoke-direct {v0}, Lf8/j5;-><init>()V

    iget-object p0, p0, Lf8/l5;->l:Lf8/j4;

    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    iput-object p0, v0, Lf8/j5;->m:Ljava/util/ListIterator;

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lf8/l5;->l:Lf8/j4;

    invoke-virtual {p0}, Lf8/j4;->size()I

    move-result p0

    return p0
.end method
