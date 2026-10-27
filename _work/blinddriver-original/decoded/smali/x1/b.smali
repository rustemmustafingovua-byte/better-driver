.class public final Lx1/b;
.super La9/c;
.source "SourceFile"


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lx1/d;

.field public n:I


# direct methods
.method public constructor <init>(Lx1/d;La9/c;)V
    .locals 0

    iput-object p1, p0, Lx1/b;->m:Lx1/d;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lx1/b;->l:Ljava/lang/Object;

    iget p1, p0, Lx1/b;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx1/b;->n:I

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lx1/b;->m:Lx1/d;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lx1/d;->a(JJLa9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
