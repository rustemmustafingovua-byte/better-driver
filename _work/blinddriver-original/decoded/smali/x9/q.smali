.class public final Lx9/q;
.super La9/c;


# instance fields
.field public l:Lb0/s1;

.field public synthetic m:Ljava/lang/Object;

.field public n:I

.field public final synthetic o:Lb0/s1;

.field public p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb0/s1;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lx9/q;->o:Lb0/s1;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lx9/q;->m:Ljava/lang/Object;

    iget p1, p0, Lx9/q;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx9/q;->n:I

    iget-object p1, p0, Lx9/q;->o:Lb0/s1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lb0/s1;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
