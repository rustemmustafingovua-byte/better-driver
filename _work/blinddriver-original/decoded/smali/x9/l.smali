.class public final Lx9/l;
.super La9/c;


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public m:I

.field public final synthetic n:Lx9/m;

.field public o:Lx9/m;

.field public p:Lx9/h;

.field public q:Ljava/lang/Throwable;

.field public r:J


# direct methods
.method public constructor <init>(Lx9/m;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lx9/l;->n:Lx9/m;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lx9/l;->l:Ljava/lang/Object;

    iget p1, p0, Lx9/l;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx9/l;->m:I

    iget-object p1, p0, Lx9/l;->n:Lx9/m;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lx9/m;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
