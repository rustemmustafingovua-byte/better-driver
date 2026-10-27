.class public final Lr/a2;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:J

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lb6/g0;

.field public o:I


# direct methods
.method public constructor <init>(Lb6/g0;La9/c;)V
    .locals 0

    iput-object p1, p0, Lr/a2;->n:Lb6/g0;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lr/a2;->m:Ljava/lang/Object;

    iget p1, p0, Lr/a2;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/a2;->o:I

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lr/a2;->n:Lb6/g0;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lb6/g0;->j(JJLy8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
