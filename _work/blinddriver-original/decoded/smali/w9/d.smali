.class public final Lw9/d;
.super La9/c;
.source "SourceFile"


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lw9/e;

.field public n:I


# direct methods
.method public constructor <init>(Lw9/e;La9/c;)V
    .locals 0

    iput-object p1, p0, Lw9/d;->m:Lw9/e;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lw9/d;->l:Ljava/lang/Object;

    iget p1, p0, Lw9/d;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lw9/d;->n:I

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lw9/d;->m:Lw9/e;

    const/4 v1, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lw9/e;->D(Lw9/m;IJLa9/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lw9/l;

    invoke-direct {p1, p0}, Lw9/l;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
