.class public final Lub/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Lnb/d;

.field public final d:Z

.field public final e:Z

.field public f:[Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lnb/d;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lub/a;->a:Z

    iput-boolean v0, p0, Lub/a;->b:Z

    iput-object p1, p0, Lub/a;->c:Lnb/d;

    iput-boolean p2, p0, Lub/a;->d:Z

    iput-boolean p3, p0, Lub/a;->e:Z

    return-void
.end method

.method public static a(Lnb/d;Ljava/util/Collection;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltb/d;

    iget-object v0, v0, Ltb/d;->b:Lpb/a;

    :goto_0
    iget v2, p0, Lnb/d;->a:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnb/d;->c:[Lpb/a;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lpb/a;->i(Lpb/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
