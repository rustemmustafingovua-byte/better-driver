.class public final Ll2/a;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ljava/lang/Object;

.field public m:Lb3/k;

.field public n:I

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ll2/c;

.field public r:I


# direct methods
.method public constructor <init>(Ll2/c;La9/c;)V
    .locals 0

    iput-object p1, p0, Ll2/a;->q:Ll2/c;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ll2/a;->p:Ljava/lang/Object;

    iget p1, p0, Ll2/a;->r:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ll2/a;->r:I

    iget-object p1, p0, Ll2/a;->q:Ll2/c;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Ll2/c;->a(Ll2/c;Landroid/view/ScrollCaptureSession;Lb3/k;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
