using Microsoft.EntityFrameworkCore;
using Pomelo.EntityFrameworkCore.MySql;
using Expediente.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Expediente.Data
{
    public class Base_Datos : DbContext
    {
        public Base_Datos(DbContextOptions<Base_Datos> options) : base(options)
        {
            
        }
        public DbSet<Fisico> Fisicos { get; set; }
        public DbSet<Nacionalidades> Nacionalidades { get; set; }
        public DbSet<Genero> Generos{ get; set; }
        public DbSet<EstadoCivil> EstadosCivil { get; set; }
        public DbSet<Tipos_Identificacion> Tipos_ID { get; set; }
    }
}
