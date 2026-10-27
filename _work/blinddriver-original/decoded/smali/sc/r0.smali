.class public abstract Lsc/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lsc/f;

.field public static final b:Lia/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lsc/p;->c:Lsc/p;

    sput-object v0, Lsc/r0;->a:Lsc/f;

    new-instance v0, Lsc/j;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lsc/j;-><init>(I)V

    invoke-static {v0}, Lr5/u0;->b(Li9/c;)Lia/r;

    move-result-object v0

    sput-object v0, Lsc/r0;->b:Lia/r;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lsc/p;->b:Lsc/p;

    sput-object v0, Lsc/r0;->a:Lsc/f;

    return-void
.end method
