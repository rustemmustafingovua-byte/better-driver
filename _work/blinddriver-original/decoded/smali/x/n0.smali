.class public final Lx/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:[Ljava/util/List;

.field public c:I

.field public d:I

.field public e:Z

.field public final synthetic f:Lx/o0;


# direct methods
.method public constructor <init>(Lx/o0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/n0;->f:Lx/o0;

    iput-object p2, p0, Lx/n0;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/util/List;

    iput-object p1, p0, Lx/n0;->b:[Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "NestedPrefetchController shouldn\'t be created with no states"

    invoke-static {p0}, Lt/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
