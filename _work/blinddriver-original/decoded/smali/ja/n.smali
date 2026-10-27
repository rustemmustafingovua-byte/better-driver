.class public final Lja/n;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lt8/b;

.field public m:Lja/o;

.field public n:Ljava/util/LinkedHashMap;

.field public o:Ljava/lang/String;

.field public p:I

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lja/o;

.field public s:I


# direct methods
.method public constructor <init>(Lja/o;La9/a;)V
    .locals 0

    iput-object p1, p0, Lja/n;->r:Lja/o;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lja/n;->q:Ljava/lang/Object;

    iget p1, p0, Lja/n;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lja/n;->s:I

    iget-object p1, p0, Lja/n;->r:Lja/o;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lja/o;->a(Lja/o;Lt8/b;La9/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
