.class public final Li7/c;
.super Le7/f;
.source "SourceFile"


# static fields
.field public static final i:Lk0/l;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ld7/g;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ld7/g;-><init>(I)V

    new-instance v1, Li7/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Li7/b;-><init>(I)V

    new-instance v2, Lk0/l;

    const-string v3, "ClientTelemetry.API"

    invoke-direct {v2, v3, v1, v0}, Lk0/l;-><init>(Ljava/lang/String;Lwa/h;Ld7/g;)V

    sput-object v2, Li7/c;->i:Lk0/l;

    return-void
.end method
