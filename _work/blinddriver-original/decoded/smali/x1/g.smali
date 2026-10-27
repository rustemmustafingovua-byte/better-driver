.class public final Lx1/g;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:J

.field public m:J

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lx1/i;

.field public p:I


# direct methods
.method public constructor <init>(Lx1/i;La9/c;)V
    .locals 0

    iput-object p1, p0, Lx1/g;->o:Lx1/i;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lx1/g;->n:Ljava/lang/Object;

    iget p1, p0, Lx1/g;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx1/g;->p:I

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lx1/g;->o:Lx1/i;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lx1/i;->j(JJLy8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
