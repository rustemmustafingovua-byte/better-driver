.class public abstract Lc2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc2/k;

.field public static final b:Lc2/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc2/k;

    sget-object v1, Lc2/b;->s:Lc2/b;

    invoke-direct {v0, v1}, Lc2/a;-><init>(Li9/e;)V

    sput-object v0, Lc2/d;->a:Lc2/k;

    new-instance v0, Lc2/k;

    sget-object v1, Lc2/c;->s:Lc2/c;

    invoke-direct {v0, v1}, Lc2/a;-><init>(Li9/e;)V

    sput-object v0, Lc2/d;->b:Lc2/k;

    return-void
.end method
