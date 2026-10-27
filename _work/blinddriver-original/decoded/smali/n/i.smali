.class public final Ln/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln/o1;

.field public final b:Ljava/lang/Object;

.field public final c:J

.field public final d:Li9/a;

.field public final e:Lr0/e1;

.field public f:Ln/p;

.field public g:J

.field public h:J

.field public final i:Lr0/e1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ln/o1;Ln/p;JLjava/lang/Object;JLi9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ln/i;->a:Ln/o1;

    iput-object p6, p0, Ln/i;->b:Ljava/lang/Object;

    iput-wide p7, p0, Ln/i;->c:J

    iput-object p9, p0, Ln/i;->d:Li9/a;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Ln/i;->e:Lr0/e1;

    invoke-static {p3}, Ln/d;->g(Ln/p;)Ln/p;

    move-result-object p1

    iput-object p1, p0, Ln/i;->f:Ln/p;

    iput-wide p4, p0, Ln/i;->g:J

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Ln/i;->h:J

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Ln/i;->i:Lr0/e1;

    return-void
.end method
