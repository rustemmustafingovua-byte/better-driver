.class public final Lf8/d4;
.super Ljava/util/AbstractList;
.source "SourceFile"


# instance fields
.field public final l:Ljava/util/List;

.field public final m:Lmb/q;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    sget-object v0, Lmc/l0;->w:Lmb/q;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lf8/d4;->l:Ljava/util/List;

    iput-object v0, p0, Lf8/d4;->m:Lmb/q;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lf8/d4;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lf8/d4;->m:Lmb/q;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lmc/k0;->b(I)Lmc/k0;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lmc/k0;->m:Lmc/k0;

    :cond_0
    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lf8/d4;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
