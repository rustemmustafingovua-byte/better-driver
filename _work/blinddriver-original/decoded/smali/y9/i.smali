.class public final Ly9/i;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lb0/s0;

.field public m:Ljava/lang/Object;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lb0/s0;

.field public p:I


# direct methods
.method public constructor <init>(Lb0/s0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Ly9/i;->o:Lb0/s0;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ly9/i;->n:Ljava/lang/Object;

    iget p1, p0, Ly9/i;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ly9/i;->p:I

    iget-object p1, p0, Ly9/i;->o:Lb0/s0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lb0/s0;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
