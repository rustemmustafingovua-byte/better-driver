.class public final Lp7/a;
.super Le7/f;
.source "SourceFile"


# static fields
.field public static final i:Lk0/l;

.field public static final j:Ljava/lang/Object;

.field public static k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ld7/g;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ld7/g;-><init>(I)V

    new-instance v1, Lk0/l;

    new-instance v2, Li7/b;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Li7/b;-><init>(I)V

    const-string v3, "LocationServices.API"

    invoke-direct {v1, v3, v2, v0}, Lk0/l;-><init>(Ljava/lang/String;Lwa/h;Ld7/g;)V

    sput-object v1, Lp7/a;->i:Lk0/l;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp7/a;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final e(Landroid/location/Location;)Lu7/i;
    .locals 4

    new-instance v0, Lg5/s;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lm2/j;

    const/16 v2, 0x1a

    invoke-direct {v1, v2, p1}, Lm2/j;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lg5/s;->l:Ljava/lang/Object;

    new-instance p1, Lf2/t1;

    iget-object v1, v0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v1, [Ld7/c;

    const/4 v2, 0x1

    const/16 v3, 0x975

    invoke-direct {p1, v0, v1, v2, v3}, Lf2/t1;-><init>(Lg5/s;[Ld7/c;ZI)V

    invoke-virtual {p0, v2, p1}, Le7/f;->d(ILf2/t1;)Lu7/i;

    move-result-object p0

    return-object p0
.end method
