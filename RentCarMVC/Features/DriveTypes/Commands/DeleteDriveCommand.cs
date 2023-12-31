﻿using MediatR;
using RentCarMVC.Data;

namespace RentCarMVC.Features.DriveTypes.Commands
{
    public record DeleteDriveCommand(Drive Drive) : IRequest<bool>;

    public class DeleteDriveCommandHandler : IRequestHandler<DeleteDriveCommand, bool>
    {
        private readonly DataContext _dataContext;

        public DeleteDriveCommandHandler(DataContext dataContext)
        {
            _dataContext = dataContext;
        }

        public async Task<bool> Handle(DeleteDriveCommand request, CancellationToken cancellationToken)
        {
            _dataContext.Drives.Remove(request.Drive);
            var result = await _dataContext.SaveChangesAsync();

            return result > 0;
        }
    }
}
