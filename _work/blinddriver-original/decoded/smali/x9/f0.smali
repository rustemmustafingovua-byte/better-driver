.class public final Lx9/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lx9/g0;

.field public static final b:Lx9/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx9/g0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx9/g0;-><init>(I)V

    sput-object v0, Lx9/f0;->a:Lx9/g0;

    new-instance v0, Lx9/g0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lx9/g0;-><init>(I)V

    sput-object v0, Lx9/f0;->b:Lx9/g0;

    return-void
.end method
