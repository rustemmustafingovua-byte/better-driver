.class public final La5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Lx4/j;

.field public final b:I

.field public final c:Lc5/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintsCmdHandler"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La5/e;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lx4/j;ILa5/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La5/e;->a:Lx4/j;

    iput p3, p0, La5/e;->b:I

    iget-object p1, p4, La5/j;->p:Ly4/q;

    iget-object p1, p1, Ly4/q;->u:Le5/k;

    new-instance p2, Lc5/o;

    invoke-direct {p2, p1}, Lc5/o;-><init>(Le5/k;)V

    iput-object p2, p0, La5/e;->c:Lc5/o;

    return-void
.end method
