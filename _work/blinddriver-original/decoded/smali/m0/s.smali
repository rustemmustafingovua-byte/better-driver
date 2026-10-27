.class public final Lm0/s;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ljava/lang/CharSequence;

.field public m:Ljava/lang/Object;

.field public n:Lca/c;

.field public o:J

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lm0/u;

.field public r:I


# direct methods
.method public constructor <init>(Lm0/u;La9/c;)V
    .locals 0

    iput-object p1, p0, Lm0/s;->q:Lm0/u;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lm0/s;->p:Ljava/lang/Object;

    iget p1, p0, Lm0/s;->r:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lm0/s;->r:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lm0/s;->q:Lm0/u;

    const/4 v1, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lm0/u;->a(Lm0/u;Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassifier;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
