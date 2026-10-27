.class public final Lc2/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc2/u1;

.field public b:Lc2/n0;

.field public final c:Lc2/q1;

.field public final d:Lc2/q1;

.field public final e:Lc2/q1;


# direct methods
.method public constructor <init>(Lc2/u1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/r1;->a:Lc2/u1;

    new-instance p1, Lc2/q1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lc2/q1;-><init>(Lc2/r1;I)V

    iput-object p1, p0, Lc2/r1;->c:Lc2/q1;

    new-instance p1, Lc2/q1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lc2/q1;-><init>(Lc2/r1;I)V

    iput-object p1, p0, Lc2/r1;->d:Lc2/q1;

    new-instance p1, Lc2/q1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lc2/q1;-><init>(Lc2/r1;I)V

    iput-object p1, p0, Lc2/r1;->e:Lc2/q1;

    return-void
.end method


# virtual methods
.method public final a()Lc2/n0;
    .locals 1

    iget-object p0, p0, Lc2/r1;->b:Lc2/n0;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "SubcomposeLayoutState is not attached to SubcomposeLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
