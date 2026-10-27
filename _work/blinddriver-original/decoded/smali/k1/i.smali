.class public final Lk1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk1/o;

.field public final b:Lf2/y;

.field public final c:Lk/n0;

.field public final d:Lk/n0;

.field public e:Z


# direct methods
.method public constructor <init>(Lk1/o;Lf2/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/i;->a:Lk1/o;

    iput-object p2, p0, Lk1/i;->b:Lf2/y;

    sget-object p1, Lk/u0;->a:Lk/n0;

    new-instance p1, Lk/n0;

    invoke-direct {p1}, Lk/n0;-><init>()V

    iput-object p1, p0, Lk1/i;->c:Lk/n0;

    new-instance p1, Lk/n0;

    invoke-direct {p1}, Lk/n0;-><init>()V

    iput-object p1, p0, Lk1/i;->d:Lk/n0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-boolean v0, p0, Lk1/i;->e:Z

    if-nez v0, :cond_1

    new-instance v1, Lf2/p;

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v2, 0x0

    const-class v4, Lk1/i;

    const-string v5, "invalidateNodes"

    const-string v6, "invalidateNodes()V"

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v9}, Lf2/p;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    iget-object p0, v3, Lk1/i;->b:Lf2/y;

    iget-object p0, p0, Lf2/y;->I0:Lk/h0;

    invoke-virtual {p0, v1}, Lk/h0;->g(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lk/h0;->a(Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    iput-boolean p0, v3, Lk1/i;->e:Z

    :cond_1
    return-void
.end method
