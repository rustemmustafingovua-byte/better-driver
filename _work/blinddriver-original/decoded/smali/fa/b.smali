.class public final Lfa/b;
.super La/a;
.source "SourceFile"


# static fields
.field public static final f:Lfa/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfa/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, La/a;-><init>(I)V

    sput-object v0, Lfa/b;->f:Lfa/b;

    return-void
.end method
