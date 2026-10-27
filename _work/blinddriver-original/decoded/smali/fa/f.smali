.class public final Lfa/f;
.super La/a;
.source "SourceFile"


# static fields
.field public static final f:Lfa/f;

.field public static final g:Lfa/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lfa/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, La/a;-><init>(I)V

    sput-object v0, Lfa/f;->f:Lfa/f;

    new-instance v0, Lfa/f;

    invoke-direct {v0, v1}, La/a;-><init>(I)V

    sput-object v0, Lfa/f;->g:Lfa/f;

    return-void
.end method
